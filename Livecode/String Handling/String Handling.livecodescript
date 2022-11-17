On mouseUp
   //  Subroutine to be used in this program
   string_handling
End mouseUp

On string_handling
local firstWord, secondWord, completeWord, alphabet

put "book" into firstWord
put "mark" into secondWord
put firstWord into completeWord
put secondWord after completeWord
put completeWord into line 1 of field "output"

put "abcdefghijklmnopqrstuvwxyz" into alphabet

put char 3 of alphabet into line 3 of field "output"

put char 1 to 3 of alphabet into line 5 of field "output"

put char 24 to 26 of alphabet into line 7 of field "output"

put char 10 to 20 of alphabet into line 9 of field "output"

put the length of alphabet into line 11 of field "output"

put offset("c", alphabet) into line 13 of field "output"

put NumToChar(random(26) + 64) into line 15 of field "output"

put NumToChar(random(26)+95) into line 17 of field "output"

put CharToNum("A") into line 19 of field "output"

End string_handling

