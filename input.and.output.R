#Input and Output
# we have been inputting data sets or importing our own files with file.choose()
# data can also be run by prompting the user for input as well as printing to the monitor

#scan()
# allows you to scan a file into R
# splitting on spaces is automatic when scanning numbers
# scanning a mix of characters requires an additional argument

# scan("filename.txt", what = "")
# tells the scan function to split the values by spaces

# scan(what = "", sep ="/n")
# splits each value by row instead of spaces

# can also leave arguments blank for scan("")
# this will prompt the user to enter in data from the keyboard in the console

x <- scan("http://www.ats.ucla.edu/stat/data/scan.txt", what = list(age = 0,name = ""))

$age




