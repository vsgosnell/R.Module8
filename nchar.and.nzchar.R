# nchar()
# nchar() function determines the size of each elements of a character vector. 
# nzchar() tests whether elements of a character vector are non-empty strings.

# x: character vector
# type: bytes, chars or width
# allowNA: logical: should NA be returned for invalid multibyte strings 
# or "bytes"-encoded strings (rather than throwing an error)?


nchar(x, type = "chars", allowNA = FALSE)

nzchar(x)

x <- c("red", "green", "blue")
nchar(x)
# [1] 3 5 4


nzchar(x)
# [1] TRUE TRUE TRUE

x <- "red"
nchar(x)
# [1] 3 

