# Paste()
# The function paste converts its arguments (via as.character) to character strings, 
# and concatenate them (separating them by the string given by sep). 
# If the arguments are vectors, they are concatenated term-by-term to give a 
# character vector result. Vector arguments are recycled as needed, 
# with zero-length arguments being recycled to "".  

paste(LETTERS)
# [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J"
# [11] "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T"
# [21] "U" "V" "W" "X" "Y" "Z"

paste(c("a","b","c"), 1:5, sep="")
# [1] "a1" "b2" "c3" "a4" "b5"

