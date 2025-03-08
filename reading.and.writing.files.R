# Reading and Writing files
# read.table() is often more useful than scan() because data files often have a mixture of  
# numeric and character data. Use the Sep=“” function to set your separator variable.
# Read.table() also has ,header=TRUE, argument that allows you to enter the file row as 
# header in your data frame automatically.

# An example if we have a 5x3 matrix file
# We could use >scan()

x = matrixscan("x", nrow = 5, byrow = TRUE)
# Error in matrixscan("x", nrow = 5, byrow = TRUE) : 
#   could not find function "matrixscan"


# read.matrix = function(filename)
# {as.matrix(read.table(filename))}




#reading from url
# R will allow us to connect and download files from URL, 
# read.table() and scan() both accept these inputs as valid.
# The example the book gives is downloading a echocardiogram data set 
# from a university website. In this example, it uses paste function. 

x = http://archive.ics.uci.edu/ml/machine-learning-databases/
  x = paste(x, “echocardiogram/echocardiogram.data”,set=“”)  
y = read.csv(x)

#none of this code is ending
#console keeps printing + like it's incomplete



# Writing to a file
# write.table() is a commonly used function for writing a file
kids = c("Jack", "Jill")
ages = c(12,20)
d = data.frame(kids, ages, stringsAsFactors = FALSE)
write.table(d, "kids")
# This will create a file called kids using the d dataframe.
d
#  kids ages
# 1 Jack   12
# 2 Jill   20


# Writing with cat()
# The cat() function we used before can also be used to 
# create a file, one part at a time.

cat("abc\n", file = "u")
cat("de\n",file = "u", append = TRUE)
# cat() will save the file after each command, 
# thus the append=TRUE command is needed to add lines instead of overwritting.

