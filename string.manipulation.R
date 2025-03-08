#String Manipulation

# String is traditionally a sequence of characters, as some kind of variable. 
# A string is generally understood as a data type and is often implemented 
# as an array of bytes (or words) that stores a sequence of elements, 
# typically characters, using some character encoding. 

# String manipulation is the action of the fundamental operations on strings, 
# including their creation, concatenation, the extraction of string segments, 
# string matching, their comparison, discovering their length, replacing substrings 
# by other strings, storage, and input/output.. 

# While we have been talking about reading and writing files involving numeric data 
# and character data. We may need to manipulate character data (strings).
# R has many tools to allow you to manipulate strings and characters. 


# ignore.case(string) 
# This function specifies that a pattern should ignore the case of matches. 
# if FALSE, the pattern matching is case sensitive and 
# if TRUE, case is ignored during matching.

#have to install the packages that contain str_detect

install.packages("tidyverse")
install.packages("stringr")

#then have to load the libraries of the installed packages:
library(tidyverse)
library(stringr)

pattern <- "a.b"
strings <- c("ABB","aaB", "aab")
str_detect(strings, pattern)
# Error in str_detect(strings, pattern) : 
#   could not find function "str_detect"

str_detect(strings, ignore.case(pattern))
# Error in ignore.case(pattern) : could not find function "ignore.case"


#example from google search:
fruit <- c("apple", "banana", "pear", "pineapple")
str_detect(fruit, "a")
str_detect(fruit, "^a")
str_detect(fruit, "a$")
str_detect(fruit, "b")
str_detect(fruit, "[aeiou]")

# Also vectorised over pattern
str_detect("aecfg", letters)

# Returns TRUE if the pattern do NOT match
str_detect(fruit, "^p", negate = TRUE)


