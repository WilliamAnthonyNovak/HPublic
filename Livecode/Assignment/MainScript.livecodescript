//Microsoft Visual Studio Code

On mouseUp
    GetProcessData attraction, category, visitors, daysOpen, height
    FindMostLeastVisited
    FindServiceNeeded
    DisplayOutput
    FileOutput
End mouseUp

On GetProcessData @attraction, @category, @visitors, @daysOpen, @height
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
        Answer Please choose a file to continue.
    End If

    //Put Data into Parallel arrays 
    
    local CurrentAttraction
    Repeat with loop = 1 to the number of lines in FileContents
        put line loop of FileContents into CurrentAttraction
        split CurrentAttraction by ","

        put CurrentAttraction[1] into attraction[loop]
        put CurrentAttraction[2] into category[loop]
        put CurrentAttraction[3] into visitors[loop]
        put CurrentAttraction[4] into daysOpen[loop]
        put CurrentAttraction[5] into height[loop]
    End Repeat
       
        

