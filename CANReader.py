import serial
import time
import datetime

class CANData:
    """
    Each time our code encounters a new CAN ID, we create a new instance of this class and assign it the new CAN ID. Any time we see another CAN message with this ID, we assign its message
    contents to the "CurData" attribute of this instance.
    """
    def __init__(self, CAN_ID):
        self.ID = CAN_ID
        self.CurData = "test"
        self.OldData = "old"
        self.Changed = 0 # set to 1 if CurData gets changed, used by various functions to act upon the CANData instance when its message contents change
        self.Name = "unknown" # used to describe a piece of data once we know what it is
        self.BroadcastCount = 0 # counts up each time GetMessageRate sees it broadcast
        self.StartTime = 0 # value of time.time() when GetMessageRate started counting broadcasts
        self.Freq = 0 # Frequency (in hz) that this CAN ID is broadcast by the vehicle.....derived with GetMessageRate

class CanRead:
    def __init__(self, device): # device is of the form '/dev/ttyACM0' (for example) on Linux, or 'COM1' (for example) on Windows
        self.board = serial.Serial(device, 115200) # Serial instance of Arduino attached to CANBUS shield
        self.IDs = [] # Will contain instances of CANData object, corresponding to each unnique message ID found on CANBUS network

        self.IDsChanged = [] # IDs that have changed their data values since program start

        self.PendingMessages = [] # will hold a list of tuples, each tuple consists of the ID and message contents of a saved CAN message...used by a few functions that need to keep messages in queue

        # The following dictionary is not entirely needed, it's just used for printing friendly names of CAN IDs
        self.Names = {'6314018':'Reverse', '6284000':'Steering wheel controls','6214000':'Door, key, and engine on/off status','4214006':'ESC mode', '4394100':'Second & third maybe one value?',
                      'C214003':'Time/date string', 'E094000':'Someting related to car being on/off','421400B':'Brakes on/off','2214000':'Brakes on/off also'}

        # The following list holds CAN IDs that we think are usually static. If there is an ID you think is static, but that you think might change when you do something specific on the vehicle
        # (such as opening doors), put it in this list. Our WatchStaticIDs function will print a message anytime any of the listed CAN IDs broadcasts new/different data.
        self.IDsStatic = ['4214001', '3029100', '621401A', '4214006', '6314003', '6314000', '62BBF00', '4394000', 'A3D4003', '6214000',
                          'A354003', '6254000', '621400A', 'E094000', 'A194003', 'E094003', 'E09400A', 'E094018', 'E09401A', 'E094020',
                          '6314018', 'C394003', '6284000', '2294000', 'C214003', 'C054003']
        self.DeadIDs = [] # will hold list of IDs that have never changed
        self.UpdateTime = 1.0
        self.UpdateTimeElapsed = 0
        self.TimeThisCycle = 0
        self.TimeLastCycle = 0

        # Setup strings for storing vehicle's date & time
        self.Hours = 23
        self.Minutes = 0
        self.Day = 4
        self.Month = 7
        self.Year = 1776

        self.DataStr = "" # String of data sent by Arduino, contains CANBUS ID and message contents (separated by a spaace)
        deadReads = 5 # How many packets we read before actually trying to process data (avoids partial packets on init)
        print " dead read time"
        while deadReads: # pull a few CANBUS messages, hopefully clearing out any incomplete serial packets received during program init
            junk = self.board.readline()
            deadReads -= 1
        print "done with dead reads"
        
    def SetIDNames(self): # parses through all observed IDs and attempts to name them using our hardcoded Names dictionary
        for thing in self.IDs:
            if thing.Name == "unknown":
                try:
                    thing.Name = self.Names[thing.ID]
                    print thing.ID + " is now " + thing.Name
                except:
                    pass

    def PrintStaticIDs(self):
        count = 0
        print "Static IDs:"
        for thing in self.IDs:
            if not thing in self.IDsChanged:
                print thing.ID + ": " + thing.CurData
                count += 1
        print "Done, found " + str(count) + " static items."

    def PrintStaticData(self): # prints value of any otherwise static data that has now changed
        for thing in self.IDsStatic:
            for ID in self.IDs:
                if ID.ID == thing and ID.Changed:
                    print thing + ": " + ID.CurData
                    ID.Changed = 0

    def ShowReverseMode(self):
        RevData = self.ReadDataFromID('6314018')
        if RevData[0] == 'C':
            print "Truck is NOT in reverse"
        else:
            print "Truck is in REVERSE"

    def WatchID(self, ID):
        for thing in self.IDs:
            if thing.ID == ID and thing.Changed:
                thing.Changed = 0
                print ID + " changed to " + thing.CurData

    def WatchStaticIDs(self):
        for thing in self.IDs:
            if thing.ID in self.IDsStatic:
                if thing.Changed:
                    thing.Changed = 0
                    print thing.ID + " changed to " + thing.CurData
    def WatchLiveID(self, ID): # print message from this ID regardless of whether or not it's changes
        thingFound = 0
        for thing in self.IDs:
            if thing.ID == ID:
                print ID + ": " + thing.CurData
                thingFound = 1
        if not thingFound:
            print ID + " not found in ID list"
            
    def ReturnID(self, ID): # returns value of passed ID
        thingFound = 0
        for thing in self.IDs:
            if thing.ID == ID:
                return thing.CurData
                thingFound = 1
                break
        if not thingFound:
            return 0

    def ReturnID_Int(self, ID): # returns value of passed ID, and converts each member from hex to int
        thingFound = 0
        ourData = ""
        for thing in self.IDs:
            if thing.ID == ID:
                ourData = thing.CurData
                thingFound = 1
        if not thingFound:
            return 0
        else:
            ourData = ourData[:-2] # cut trailing two chars, as they are termination characters
            intList = []
            while len(ourData):
                curStr = "0x" + ourData[:2]
                intList.append(int(curStr, 0))
                ourData = ourData[2:]
            return intList

    def GetDateTime(self):
        # Reads and stores date/time from car
        # 235121012017: Jan 21, 2017, 11:51pm
        TDstr = "235321012017"
        for thing in self.IDs:
            if thing.ID == 'C214003':
                TDstr = thi5ng.CurData
        self.Hours = int(TDstr[:2])
        self.Minutes = int(TDstr[2:4])
        self.Day = int(TDstr[4:6])
        self.Month = int(TDstr[6:8])
        self.Year = int(TDstr[8:12])

    def PrintDateTime(self):
        #  datetime.datetime(2013, 9, 30, 7, 6, 5)
        DateStr = str(datetime.date(self.Year, self.Month, self.Day))
        TimeStr = str(datetime.time(self.Hours, self.Minutes))
        print "Date: " + DateStr
        print "Time: " + TimeStr[:-3] # cut off last 3 chars, as we don't have seconds value from vehicle

    def IDTest(self, ID): # modify this function for all sorts of playing about with a specific ID
        thingFound = 0
        ourData = ""
        for thing in self.IDs:
            if thing.ID == ID:
                ourData = thing.CurData
                thingFound = 1
        if not thingFound:
            return 0
        else:
            ourData = ourData[:-2] # cut trailing two chars, as they are termination characters
            newData = "0x" + ourData[-8:]
            returnStr = int(newData, 0)
            return returnStr
            intList = []

    def GetKeyStatus(self):
        # determines key position (off/run/start), and state (in or out), and engine state (on or off)
        # 040C400000590B00
        keyData = self.ReturnID("6214000")
        
        keyPos = "unknown"
        engineIsOn = "unknown"
        keyIsIn = "unknown"
        try:
            # determine key position
            if keyData[4] == "4":
                keyPos = "run"
            elif keyData[4] == "C":
                keyPos = "start"
            elif keyData[4] == "1":
                keyPos = "off, confirmed"
            else:
                keyPos = "encountered unknown condition: " + keyData[4]

            # now see if engine is running
            if keyData[5] == "8":
                engineIsOn = "OFF, we've not yet gone from RUN to OFF since key insertion"
            elif keyData[5] == "C":
                engineIsOn = "OFF, and we've already gone from RUN to OFF since key insertion"
            elif keyData[5] == "0":
                engineIsOn = "ON"

            # Finally, see if key is inserted
            # NOTE: Vehicle will NOT broadcast ANY messages until key is turned to "RUN". After going from RUN to OFF, messages will be broadcast for a few seconds.
            # The following code is only good for detecting this aforementioned condition, when key is removed after having been in the RUN (and then OFF) position
            str1 = keyData[4:6]
            str2 = keyData[12:14]
            if str1 == "18" and str2 == "0F":
                keyIsIn = "TIME OUT"
            else:
                keyIsIn = "INSERTED; data is " + str1 + " and " + str2
        except:
            pass
            
        print "Key position: " + keyPos
        print "Engine status: " + engineIsOn
        print "Key status: " + keyIsIn

    def PrintAllMessages(self, pleasePrint): # pass 1 to this function if we want to print the messages, pass something else if we're just processing the list
        if pleasePrint:
            for message in self.PendingMessages:
                print message
        self.PendingMessages = []

    def PrintFOBStatus(self):
        pass

    def WatchBroadcasts(self, ID): # This function alerts us each time the specified ID broadcasts a new message
        for message in self.PendingMessages:
            if message[0] == ID:
                print ID + " sent a message!"
        self.PendingMessages = []

    def GetMessageRate(self, ID, sampleTime): # determines broadcast frequency of the passed message ID; last parameter is how many seconds we want to sample this message at (1.0 is good for most messages)
        thisTime = time.time()
        freq = 0
        FoundIt = 0
        for thing in self.IDs:
            if thing.ID == ID and not FoundIt:
                FoundIt = 1
                if (thisTime - thing.StartTime) >= sampleTime:
                    freq = thing.BroadcastCount / sampleTime
                    thing.StartTime = thisTime
                    thing.BroadcastCount = 0
                    thing.Freq = freq
                    #print ID + " frequency: " + str(freq)
            elif FoundIt:
                break

    def GetFreq(self, ID):
        result = 0
        for thing in self.IDs:
            if thing.ID == ID:
                result = thing.Freq
        return result

    def PrintFreq(self, ID):
        result = "ID not found"
        for thing in self.IDs:
            if thing.ID == ID:
                result = "Frequency of " + ID + ": " + str(thing.Freq)
        print result

    def Update(self):
        # This function calls all other functions needed for processing CANBUS data

        savingMessages = 0 # set to 1 when we want to add every incoming CAN message to our saved message queue; PrintAllMessages and WatchBoradcasts rely on this being enabled
        self.TimeThisCycle = time.time()
        elapsedTime = self.TimeThisCycle - self.TimeLastCycle
        self.UpdateTimeElapsed += elapsedTime
        self.SetIDNames()
        for ID in self.IDs:
            self.GetMessageRate(ID.ID, 1.0)
        #self.GetMessageRate('6214000', 1.0)
        #self.WatchID('6284000')
        #self.WatchID('6214000')
        #self.WatchID('63D4000')
        #self.WatchID('C3D4000')
        #self.WatchStaticIDs()
        #self.WatchID('2294000') # key FOB
        #idList = ['1E114000', '1E114018', '1E114003', '1E11400A', '1E11401A', '1E114020']
        #for thing in idList:
        #    self.WatchID(thing)
        #self.WatchID('1E114020')
        #self.WatchID('421400B')
        #self.WatchBroadcasts('6284000')
        if self.UpdateTimeElapsed >= self.UpdateTime:
            #print reader.ReadDataFromID('4294001')
            self.UpdateTimeElapsed = 0
            #self.PrintFreq('E094000')
            self.GetKeyStatus()
            #self.GetDateTime()
            #self.PrintDateTime()
            #self.WatchLiveID('1E114020')
            #self.PrintAllMessages(1) # be sure to set "savingMessages = 1" for this function to have a list of messages to work on
            self.WatchLiveID('6214000')
            #print self.ReturnID_Int('4214001')
            #print self.IDTest('4214001')
            #self.PrintStaticIDs()
            #self.PrintDeadIDs()
            #self.PrintStaticData()
            #print self.ReadDataFromID('6284000')
            #print self.ReadDataFromID('6314018')
            #self.ShowReverseMode()
        self.TimeLastCycle = self.TimeThisCycle
        self.DataStr = self.board.readline()

        #if len(self.DataStr) < 22:
        #    self.FixDataStr() # run this to take the ESP32 data output look like our SparkFun shield's output
        
        #print self.DataStr # DEBUG
        if savingMessages:
            self.PendingMessages.append(self.GetMessage(self.DataStr))
        self.ProcessData(self.DataStr)

        """
        4294001: Brake pedal position
        6314018: REVERSE status
        6284000: steering wheel buttons
        """
        #self.ReadDataFromID('6314018') # call this from main program to get CANBUS data

        
        """
        Code below is only tested with ID 6214000.

        This code deals with differences between the Arduino CAN library I originally used, and the CAN library currently used by the ESP.

        The problem: take the following message data as an example: 04004800003F0B00
        This seems to be a correct, complete CAN message. However, when the same data is processed by the ESP library, it looks like this: 4000840000f3b

        This second value is 13 characters, which seems odd (haha...). If we assume that there is supposed to be one more zero at the end of the data,
        we can make the following assumption about data from the ESP:

        Every two characters of the data are in the correct order as a pair, but are reversed in their order within the message.
        For example, if the data were supposed to be 12345678, the ESP would actually send 78563412.
        """
    def FixData(self, curID, curData): # curID: ID string as returned by ESP library; curData: Data message as returned by ESP library
        # When the ESP sends current CAN ID, it puts one or more leading zeroes in place. Since my code is not expecting this, I need to cut leading zeroes.
        while curID[0] == '0':
            curID = curID[1:]
            
        newData = "" # this will be the "fixed" version of the data string
        start = 11
        while start > 0:
            end = start + 2
            newData = newData + curData[start:end]
            start -= 2
        # Since the message contents for the ID in question (6214000) are only 13 characters long, we work on our new data string until we get to the first member of the ESP's message data.
        # In the following line, we're simply appending that first member to the END of our new data string, then adding the missing zeroes to the end. This gives us the proper 16 character message.
        newData = newData + curData[0] + "000"
        return curID, newData
            
    def PrintDeadIDs(self): # Prints IDs whose message contents have not yet changed since program init, and prints the message contents
        for thing in self.DeadIDs:
            print thing.ID + ": " + thing.Name + ": " + thing.CurData[:-2] # last two chars are newline chars, so we skip them
        print "DONE printing dead IDs"

    def LookForChanges(self): # NOT IN USE
        for ID in self.IDs:
            if ID.CurData != ID.OldData:
                #print "New data for ID " + ID.ID + ": " + ID.CurData
                self.IDsChanged.append(ID)

    def ReadDataFromID(self, ID):
        # Searches our list of ID objects for a specific ID, and prints out its current message contents
        result = "ID not found: " + ID # Default message if ID is not found
        for thing in self.IDs:
            if thing.ID == ID:
                result = thing.CurData
        return result

    def GetMessage(self, dataStr): # reads a line of serial data and attempts to process a CAN message from it
        curID = ""      # CANBUS ID of this message
        curData = ""    # CANBUS contents of this message
        count = 0       # index of current character in CANBUS message
        DoneWithID = 0  # Set to 1 once we are finished finding the CANBUS ID of this message
        while count < len(dataStr): # Process this message as long as it contains data
            curChar = dataStr[count] # handle each character individually
            if curChar == ' ': # The first space character separates the ID portion of the message from its data contents
                DoneWithID = 1
                count += 1
                curChar = dataStr[count] # Advance current character by 1 so that the separating space does not get appended to our message contents
            if DoneWithID: # Now that we are done finding the message ID, all remaining characters constitute the message contents
                curData = curData + curChar # Build message data contents
            else:
                curID = curID + curChar # Build message ID
            count += 1 # Advance position within our string of text received from Arduino
        if curID[0] == "0": # ID is preceded by a zero, which means we're looking at an ESP32-generated message, need to fix the data
            curID, curData = self.FixData(curID, curData)
        return curID, curData

    

    def ProcessData(self, dataStr):
        # Processes a line of CANBUS message data received from the Arduino
        curID = ""      # CANBUS ID of this message
        curData = ""    # CANBUS contents of this message
        count = 0       # index of current character in CANBUS message
        DoneWithID = 0  # Set to 1 once we are finished finding the CANBUS ID of this message
        curID, curData = self.GetMessage(dataStr)
        """
        # replaced by GetMessage()
        while count < len(dataStr): # Process this message as long as it contains data
            curChar = dataStr[count] # handle each character individually
            if curChar == ' ': # The first space character separates the ID portion of the message from its data contents
                DoneWithID = 1
                count += 1
                curChar = dataStr[count] # Advance current character by 1 so that the separating space does not get appended to our message contents
            if DoneWithID: # Now that we are done finding the message ID, all remaining characters constitute the message contents
                curData = curData + curChar # Build message data contents
            else:
                curID = curID + curChar # Build message ID
            count += 1 # Advance position within our string of text received from Arduino
        """
        if not len(self.IDs): # If our list of message IDs is empty, we automatically add the ID of the first message received
            thisID = CANData(curID) # Create an instance of our CANData class for this ID            
            self.IDs.append(thisID) # Add new instance to our list of IDs
        ID_is_Old = 0 # Assume we have not seen this ID yet, for now
        #print "IDs: " + str(self.IDs)
        for thing in self.IDs: # See if the current ID is in our list of IDs we've already seen
            if thing.ID == curID: # If it is....
                thing.BroadcastCount += 1 # increment broadcast count
                if thing.BroadcastCount >= 1000000: # cap BroadcastCount at a million
                    thing.BroadcastCount = 0
                ID_is_Old = 1 # ..make a note of it...
                if curData != thing.CurData:
                    thing.Changed = 1 # flag this ID as having changed, our PrintStaticData function will set it back to 0 after reporting data value
                    if thing in self.DeadIDs:
                        self.DeadIDs.remove(thing)
                        print thing.ID + " changed, removing from list of dead IDs"
                thing.OldData = thing.CurData # ID's data from previous update is now "old" data
                thing.CurData = curData # ...and update the existing instance of this ID with the latest corresponding message
        if not ID_is_Old: # New ID encountered
            thisID = CANData(curID) # Create an instance of our CANData class for this ID
            thisID.OldData = curData
            thisID.CurData = curData   # Assign current data message contents to new CANData instance
            self.IDs.append(thisID) # Add new instance to our list of CANData instances
            self.DeadIDs.append(thisID) # assume this ID has not changed yet
            print "New ID found: " + str(curID)
        #print self.IDs
        #print self.IDs[0].ID
        #print curID
        #print curData


#"""
# Test routine
try:
    reader = CanRead('/dev/ttyACM0')
except:
    reader = CanRead('/dev/ttyUSB0')
while 1:
    reader.Update()
#"""
