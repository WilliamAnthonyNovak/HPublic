//Microsoft Visual Studio Code

On mouseUp
    GetArrayData attraction, category, visitors, daysOpen, attractionHeight
    FindMostLeastVisited visitors, attraction
    FindServiceNeeded category, attraction, daysOpen
End mouseUp

On GetArrayData @attraction, @category, @visitors, @daysOpen, @attractionHeight
    Local Filepath, FileContents
    
    //Get Data from File
    
    Answer file "Select the file you want to load."
    If the result is not cancel then    
        Put it into Filepath
        open file Filepath for read
        read from file Filepath until EndOfFile
        put it into FileContents
        close file Filepath
    Else
        Answer "Please choose a file to continue"
    End If

    //Split Data by line and comma and place into Parallel arrays 
    
    local CurrentAttraction
    Repeat with loop = 1 to the number of lines in FileContents
        put line loop of FileContents into CurrentAttraction
        split CurrentAttraction by ","

        put CurrentAttraction[1] into attraction[loop]
        put CurrentAttraction[2] into category[loop]
        put CurrentAttraction[3] into visitors[loop]
        put CurrentAttraction[4] into daysOpen[loop]
        put CurrentAttraction[5] into attractionHeight[loop]
    End Repeat
End GetArrayData


On FindMostLeastVisited visitors, attraction
   Local MostVisited, LeastVisited
   // Call Functions to Find Most/Least Visited Attractions and send to display
   
   Put FindMostVisited(visitors) into MostVisited
   Put "The most visited attraction is" && attraction[MostVisited] into line 1 of Field "Field"
   Put FindLeastVisited(visitors)  into LeastVisited
   Put "The least visited attraction is" && attraction[LeastVisited] into line 2 Field "Field"
End FindMostLeastVisited

function FindLeastVisited visitors
    
    //Implementation of Find Min Position Standard Algorithm
    
    local leastVisited 
    put 1 into leastVisited
    Repeat with loop = 2 to the number of elements in visitors
        If visitors[loop] < visitors[leastVisited] then
            Put loop into leastVisited
        End If
    End Repeat

    Return leastVisited
end FindLeastVisited

function FindMostVisited visitors
    
    //Implementation of Find Max Position Standard Algorithm
    
    local MostVisited 
    put 1 into MostVisited
    Repeat with loop = 2 to the number of elements in visitors
        If visitors[loop] > visitors[MostVisited] then
            Put loop into MostVisited
        End If
    End Repeat

    Return MostVisited
end FindMostVisited

On FindServiceNeeded category, attraction, daysOpen
   
   //Declare Local Variables (Datatype not necessary in Livecode) and Intialisation
   
   Local NeedsService, DaysSinceService, index
   
   Put 1 into index
   
   Repeat with loop = 1 to the number of elements in daysOpen
      Put "" into NeedsService[loop]
   End Repeat
   
   //Find which Roller Coasters Needs service within 7 days (90-(daysOpen mod 90))
   //and prepare for the names to be written to services.csv
   
   Repeat with loop = 1 to the number of elements in daysOpen
      If category[loop] = "Roller Coaster"  then 
         Put (daysOpen[loop] mod 90) into DaysSinceService
         If (90 - DaysSinceService) <= 7 then
            Put attraction[loop] into line index of NeedsService
            Put index + 1 into index
            //Cannot write directly to file from repeat,
            //Need to open file seperately so cannot 
            //exactly follow refinements
         End If
      End If
   End Repeat
   
   //Create and write to services.csv
   
   Open file "C:\Users\willi\Documents\Assignment\services.csv" for write
   Write NeedsService to file "C:\Users\willi\Documents\Assignment\services.csv"
   Close file "C:\Users\willi\Documents\Assignment\services.csv"
   
End FindServiceNeeded
    
    
