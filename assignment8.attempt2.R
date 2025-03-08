assignment8 <- read.table(file.choose("Assignment 6 Dataset.txt"), sep=",", header=TRUE)
assignment8

average <- ddply(assignment8, "Sex", transform, Grade.Average = mean(Grade))
average


write.table(average, "Students_Gendered_Mean")
read.table("Students_Gendered_Mean")
#returns the sorted genders and grade averages
# Name Age    Sex Grade Grade.Average
# 1      Lauri  21 Female    90       86.9375
# 2     Leonie  21 Female    91       86.9375
# 3    Sherlyn  22 Female    85       86.9375
# 4    Mikaela  20 Female    69       86.9375
# 5       Aiko  24 Female    97       86.9375
# 6   Tiffaney  21 Female    78       86.9375
# 7     Corina  23 Female    81       86.9375
# 8  Petronila  23 Female    98       86.9375
# 9     Alecia  20 Female    87       86.9375
# 10   Shemika  23 Female    97       86.9375
# 11    Fallon  22 Female    90       86.9375
# 12   Deloris  21 Female    67       86.9375
# 13    Randee  23 Female    91       86.9375
# 14     Eboni  20 Female    84       86.9375
# 15   Delfina  19 Female    93       86.9375
# 16 Ernestina  19 Female    93       86.9375
# 17      Raul  25   Male    80       80.2500
# 18    Booker  18   Male    83       80.2500
# 19   Raphael  23   Male    91       80.2500
# 20      Milo  19   Male    67       80.2500

i_students <- subset(average, grepl("i", average$Name, ignore.case=T))
i_students
#returns the subset "i" in the name category of the sorted table
# Name Age    Sex Grade Grade.Average
# 1      Lauri  21 Female    90       86.9375
# 2     Leonie  21 Female    91       86.9375
# 4    Mikaela  20 Female    69       86.9375
# 5       Aiko  24 Female    97       86.9375
# 6   Tiffaney  21 Female    78       86.9375
# 7     Corina  23 Female    81       86.9375
# 8  Petronila  23 Female    98       86.9375
# 9     Alecia  20 Female    87       86.9375
# 10   Shemika  23 Female    97       86.9375
# 12   Deloris  21 Female    67       86.9375
# 14     Eboni  20 Female    84       86.9375
# 15   Delfina  19 Female    93       86.9375
# 16 Ernestina  19 Female    93       86.9375
# 20      Milo  19   Male    67       80.2500


filtered_data_csv <- write.table(i_students, sep = ",")
#this creates a CSV






