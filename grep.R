# Grep()
# If you are looking to a specific set of characters in a string 
# (or elements in a vector) you can do that with grep()

x <- c("16_24cat", "25_34cat", "35_44catch", 
       "45_54Cat", "55_104fat")

grep(pattern = "cat", x = x)
# [1] 1 2 3

grep("cat$", x, ignore.case = T)
# [1] 1 2 4

