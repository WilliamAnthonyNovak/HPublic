Global ArrayOfRecords

On MouseUp
   local fileContents
   ReadFile fileContents
   populateArrayOfRecords fileContents, ArrayOfRecords
end MouseUp

On ReadFile @fileContents
    local fileToRead
    Answer file "Please enter the file you want to read:"
    if the result is not cancel then
        put it into fileToRead
        open file fileToRead for read
        read from file fileToRead until EndOfFile
        Put it into fileContents
        Close file fileToRead
    End if
End ReadFile

on populateArrayOfRecords fileContents, @ArrayOfRecords
   local currentLine
   Repeat with loop = 2 to the number of lines in fileContents
      local currentCountry
      put line loop of fileContents into currentLine
      split currentLine by comma
      put currentLine[1] into current currentCountry["name"]
      put currentLine[2] into current currentCountry["code"]
      put currentLine[3] into current currentCountry["capital"]
      put currentLine[4] into current currentCountry["area"]
      put currentLine[5] into current currentCountry["population"]
      
      put currentCountry into ArrayOfRecords[loop-1]
   End Repeat
End populateArrayOfRecords