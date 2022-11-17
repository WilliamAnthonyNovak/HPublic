global ArrayOfRecords

on mouseup
   put findSmallestCountry(ArrayOfRecords) into smallest
   put "The smallest country" && "with an area of" && smallest["area"]\
         && "square km is" && smallest["name"] into field "field"
end mouseup

function findSmallestCountry ArrayOfRecords
   local smallestCountry
   put ArrayOfRecords[1] into smallestCountry
   
   Repeat with loop = 2 to the number of elements in ArrayOfRecords
      If ArrayOfRecords[loop, area] < smallestCountry then
      put ArrayOfRecords[loop] into smallestCountry
   End If
   End Repeat
   Return smallestCountry
end FindSmallestCountry