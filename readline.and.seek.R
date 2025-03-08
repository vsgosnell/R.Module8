# You can also read the keyboard input from the user with readline()
# readline() is mostly used with a prompt message, 
# for example readline(“What is your Age: “)
# This will send the given string to the console and prompt the user for input


fun <- function() {
  ANSWER <- readline("Are you a satisfied R user? ")
  if (substr(ANSWER, 1, 1) == "n")
    cat("This is impossible.  YOU LIED!\n")
  else
    cat("I knew it.\n")
}

fun() 


# When reading text from a file you can also use the 
# readLines() function that will return the read file all at once.
# example is the file z0
# when we want to read a file line by line we need to create a 
# connection to the file in R

# A connection is essentially a file object that holds the file 
# in an object that allows you to call various functions on the file.
# 
# You can do this by calling file() or url()
# If we have a file called z0.txt

c = file("z0”,”r”)

readLines(c, n = 1)
#supposed to print names, but is showing +
#like it is expecting more code -> incomplete?

# In this case “n=X” is the increment. 
# This allows us to read the file line by line and when it 
# reaches the end of the file it will return 

c = file(“z0”,”r”)
readLines(c, n=2)

seek(con=c, where=0)

readLines(c,n=1)
#all of this code is producing +
#like it's incomplete

# The seek() function tells where=XX argument file pointer is. 
# It will tell us how many characters from the start of the file.
# Where=0 means that we wish to position the file pointer to start 
# with zero characters from the start of the file. (directly at the beginning)
# The return we say was [1] 16, this value is telling us what character 
# the pointer was on before seeking. (this includes white spaces)
