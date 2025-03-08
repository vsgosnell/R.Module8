# Step # 1 Import assignment 6 Data-set to R
# Then, Run the command "mean" using Sex as the category (use plyr package for this operation). 
# Last command in this step: write the resulting output to a file.
# > <- read.table("<FileName>.txt", header = TRUE)

# >install.packages("pryr")
# require(pryr)
# require(ISLR)
# require(boot)
# install.packages("plyr")
# library(data.table)
# library(plyr)
# etc

# #----Read file from computer via prompt
# Student-assignment-6 <- read.table("<FileName>.txt", header = TRUE)
# Student-assignment-6
# StudentAverage = ddply(Student,"Sex",transform,Grade.Average=mean(Grade))

# sex = Student$Sex
# mean(Sex)
# Step # 2 Convert the data set to a dataframe for names whos' name contains the letter i, then create a new data set with those names, Write those names to a file separated by comma’s (CSV)
# The commends

# >write.table(students_gendered_mean, "Students_Gendered_Mean")

# # Filter the original data set to include only data for which the student name
# # contained the letter i.
# >i_students <- subset(students, grepl("i", students$Name, ignore.case=T))

# Step # 3
# Write the filtered data set and convert it to CSV file
# Hint(file.choose() and subset())


#install and load the required libraries
install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr)



#use read.table() for any files ending in .txt
#load the required dataset
assignment8 <- read.table("Assignment 6 Dataset.txt", sep="\t", header=TRUE)
assignment8

# Run the command "mean" using Sex as the category (use plyr package for this operation). 
ddply(assignment8, "Sex", summarize, mean.count = mean(count))
# Error in FUN(X[[i]], ...) : object 'Sex' not found

average <- ddply(assignment8, "Sex", summarize, mean.count = mean(count))
# Error in FUN(X[[i]], ...) : object 'Sex' not found

average <- ddply(Student,"Sex",transform,Grade.Average=mean(Grade))
# Error: object 'Student' not found

# Last command in this step: write the resulting output to a file.
assignment8 <- read.table("Assignment 6 Dataset.txt", header = TRUE)

#----Read file from computer via prompt
assignment8 <- read.table("Assignment 6 Dataset.txt", header = TRUE)
assignment8
#           Name.Age.Sex.Grade
# 1         Raul,25,Male,80
# 2       Booker,18,Male,83
# 3      Lauri,21,Female,90
# 4     Leonie,21,Female,91
# 5    Sherlyn,22,Female,85
# 6    Mikaela,20,Female,69
# 7      Raphael,23,Male,91
# 8       Aiko,24,Female,97
# 9   Tiffaney,21,Female,78
# 10    Corina,23,Female,81
# 11 Petronila,23,Female,98
# 12    Alecia,20,Female,87
# 13   Shemika,23,Female,97
# 14    Fallon,22,Female,90
# 15   Deloris,21,Female,67
# 16    Randee,23,Female,91
# 17     Eboni,20,Female,84
# 18   Delfina,19,Female,93
# 19 Ernestina,19,Female,93
# 20        Milo,19,Male,67

StudentAverage = ddply(assignment8,"Sex",transform,Grade.Average=mean(Grade))

sex = Student$Sex
mean(Sex)






