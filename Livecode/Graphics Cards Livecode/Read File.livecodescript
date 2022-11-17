global cardContents, maxCards, tList, tCurrentDisplayedLine, cardCount, arrayOfGraphicsCardRecords

On mouseUp
   setupFieldVariablesAndTheRecord
   ReadFile cardContents

   SplitData cardContents, arrayOfGraphicsCardRecords
   populateDataGrid arrayOfGraphicsCardRecords, maxCards, tList, tCurrentDisplayedLine, cardCount
end mouseUp

On setupFieldVariablesAndTheRecord
   put "" into field  "output"
   put empty into cardContents
   put empty into tCurrentDisplayedLine
   set the dgData of group "DataGrid 1" to empty 
   put empty  into field "BasicTable"
   put empty into arrayOfGraphicsCardRecords
end setupFieldVariablesAndTheRecord

on ReadFile @cardContents
   local graphicCardList
   answer file "Please choose a file to read in to your Livecode Stack:"
   if the result is not cancel then 
      put it into graphicCardList
      open file graphicCardList for read
      read from file graphicCardList until EndOfFile
      put it into cardContents
      close file graphicCardList
   End if
End ReadFile

on SplitData cardContents, @arrayOfGraphicsCardRecords
   local details
   repeat with loop = 1 to the number of lines in cardContents
      put line loop of cardContents into details
      split details by ", " 

      Put details[1] into arrayOfGraphicsCardRecords[loop] ["name"]
      put details[2] into arrayOfGraphicsCardRecords[loop]["memory"]
      put details[3] into arrayOfGraphicsCardRecords[loop]["speed"]
      put details[4] into arrayOfGraphicsCardRecords[loop]["cost"]
   End repeat
End SplitData

on populateDataGrid, maxCards, @tList, @tCurrentDisplayedLine, @cardCount
   local GPUinfo
   put empty into GPUinfo
   put 0 into cardCount
   put the dgtext of group "DataGrid 1" into tList
   set the tabstops of field "BasicTable" to "140, 230, 310, 320"
   Put "Name" & TAB & "Memory (GB)" & TAB & "Speed (MHz)" & TAB & "Cost (£)" into line 1 of field "BasicTable"
   Put 1 into tCurrentDisplayedLine 
   Put line tCurrentDisplayedLine of tList into line 2 of field "BasicTable"
End populateDataGrid
