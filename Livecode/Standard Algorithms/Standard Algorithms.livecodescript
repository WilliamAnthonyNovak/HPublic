Global MarksArray, NamesArray

on MouseUp
    ask "Please enter the mark you want to search for values over"
    put it into minmark
    
    put countOccurrences(minmark, MarksArray) into occurences 
    put "The number of occurrences of the mark" && searchTerm && "in the array is:" && occurences & "." into field "output3"

    Ask "What name are you searching for?"
    Put it into PupilName

    Put linearSearch(PupilName, NamesArray) into foundPupil
    put "It is" && foundPupil && "that the pupil called" && PupilName && "was found in the names array." into field "output4"
    
    put "The maximum value in the array of marks it" && findMax(MarksArray) & "." into field "output5"

    Put "The position of the maximum value in the array of marks is" && MaxPos(MarksArray) into field "output6"

    Put "This answer is returned by the findMin function:" && findMin(MarksArray) into field "output7"
End MouseUp

Function countOccurrences minmark, MarksArray
    local Passed
    
    Repeat with loop = 1 to the number of elements in MarksArray
        If MarksArray[loop] >= minmark then
            Add 1 to Passed
        End if 
    End Repeat   
    Return Passed
End countOccurrences

Function linearSearch PupilName, NamesArray
   local found
   put false into found
   
   repeat with loop = 1 to the number of elements in MarksArray
        If MarksArray[loop] = PupilName then
            put true into found
            Exit repeat
        end if
    End Repeat 
    
    Return found
End linearSearch

Function findMax MarksArray
    local MaxScore
    Put MarksArray[1] into MaxScore

    Repeat with loop = 1 to the number of elements in MarksArray
        If MarksArray[loop] > MaxScore then
            Put MarksArray[loop] into MaxScore
        End if 
    End Repeat

    Return MaxScore
End findMax

Function MaxPos MarksArray
    local position, MaxScore
    Put MarksArray[1] into MaxScore

    Repeat with loop = 1 to the number of elements in MarksArray
        If MarksArray[loop] > MaxScore then
            Put MarksArray[loop] into MaxScore
            Put loop into position
        End if 
    End Repeat

    Return position
End MaxPos

Function findMin MarksArray
   local MinScore
   Put MarksArray[1] into MinScore
   
   Repeat with loop = 1 to the number of elements in MarksArray
      If MarksArray[loop] < MinScore then
         Put MarksArray[loop] into MinScore
      End if 
   End Repeat
   
   Return MinScore
End findMin
