#load the data set by reading it with read.table
#must sep = "," otherwise objects won't appear
x = read.table(file.choose("Assignment 6 Dataset.txt"), header = TRUE, sep = ",")
x

#install and load plyr package
install.packages("plyr")
library(plyr)

y = ddply(x, "Sex", transform, Grade.Average = mean(Grade))

