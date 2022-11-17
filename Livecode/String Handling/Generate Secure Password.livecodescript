Global passwordContents, arrayPassword, numberOfRecords

On mouseUp
    SetupFieldVariablesAndArrays
    readFile passwordContents
    splitData passwordContents, arrayPassword, numberOfRecords
    populateDataGrid arrayPassword, numberOfRecords
End mouseUp

On SetupFieldVariablesAndArrays
    put empty into passwordContents
    put empty into arrayPassword
    set the dgData of group "DataGrid 1" to empty
End SetupFieldVariablesAndArrays

On readFile @passwordContents
    local fileToRead
    Answer file "Please enter the file you want to read:"
    if the result is not cancel then
        put it into fileToRead
        open file fileToRead for read
        read from file fileToRead until EndOfFile
        Put it into passwordContents
        Close file fileToRead
    End if
End readFile

On splitData passwordContents, @arrayPassword, @numberOfRecords
        local details
End splitData

On P