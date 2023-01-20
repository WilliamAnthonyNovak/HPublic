Function countOccurrence searchTerm, ArrayValues
 //Count occurences higher than searchTerm
    local Passed
    
    Repeat with loop = 1 to the number of elements in ArrayValues
        If ArrayValues[loop] >= searchTerm then
            Add 1 to Passed
        End if 
    End Repeat   
    Return Passed
End countOccurrences

Function linearSearch searchTerm, StringArray
 //Search for presence of a value
   local found
   put false into found
   
   repeat with loop = 1 to the number of elements in ArrayValues
        If StringArray[loop] = searchTerm then
            put true into found
            Exit repeat
        end if
    End Repeat 
    
    Return found
End linearSearch

Function findMax ArrayValues
 //Find maximum
    local MaxScore
    Put ArrayValues[1] into MaxScore

    Repeat with loop = 1 to the number of elements in ArrayValues
        If ArrayValues[loop] > MaxScore then
            Put ArrayValues[loop] into MaxScore
        End if 
    End Repeat

    Return MaxScore
End findMax

Function MaxPos ArrayValues
 //Find Position of Maximum
    local position, MaxScore
    Put ArrayValues[1] into MaxScore

    Repeat with loop = 1 to the number of elements in ArrayValues
        If ArrayValues[loop] > MaxScore then
            Put ArrayValues[loop] into MaxScore
            Put loop into position
        End if 
    End Repeat

    Return position
End MaxPos

Function findMin ArrayValues
 //Find Minimum
   local MinScore
   Put ArrayValues[1] into MinScore
   
   Repeat with loop = 1 to the number of elements in ArrayValues
      If ArrayValues[loop] < MinScore then
         Put ArrayValues[loop] into MinScore
      End if 
   End Repeat
   
   Return MinScore
End findMin