# plyr package
# Plyr package allows to Split data, and Run functions on that split section, 
# then Combine it back with the original data set.
# The syntax is the same across all its functions, instead of having to load 5 packages for each data type.
# This makes plyr package the best choice !! 
# These functions inside the plyr are mostly focused around “apply” functions (which is basically a for loop)

#install plyr package
install.packages("plyr")

#load plyr package
library("plyr")


# Comparison Operators:
#   equal: ==
#   not equal: !=
#   greater/less than: > <
#   greater/less than or equal: >= <=
# Logical Operators
#   and: &
#   or: |
#   not: !





# plyr function prototype
# “X,Y,PLY”()
# d = dataframe, a = array, l (L) = list
# For X you put the format of your data type

# For Y you put the format you wish to export

# so for a data.frame to a list you would put
dlply()
# d = dataframe input, l = list output, ply = end of function plyr package

# For array to dataframe you would put
adply()
# a = array input, d = dataframe output, ply = end of funciton plyr package


# plyr example
# create a data set
d = data.frame(year = rep(2000:2002, each = 3),
               count = round(runif(9,0,20)))

d
#   year count
# 1 2000    14
# 2 2000    14
# 3 2000     0
# 4 2001     3
# 5 2001     8
# 6 2001     9
# 7 2002     5
# 8 2002     3
# 9 2002    13

# Lets say we wanted to create a mean for each year as well as a total for each year,
ddply(d, "year", summarize, mean.count = mean(count))
#   year mean.count
# 1 2000   9.333333
# 2 2001   6.666667
# 3 2002   7.000000


ddply(d, "year", summarize, total.count = sum(count))
#   year total.count
# 1 2000          28
# 2 2001          20
# 3 2002          21


# Lets do the same commands but displayed against the raw table (not summarized)
ddply(d, "year", transform, mean.count = mean(count))
#   year count mean.count
# 1 2000    14   9.333333
# 2 2000    14   9.333333
# 3 2000     0   9.333333
# 4 2001     3   6.666667
# 5 2001     8   6.666667
# 6 2001     9   6.666667
# 7 2002     5   7.000000
# 8 2002     3   7.000000
# 9 2002    13   7.000000

ddply(d, "year", transform, total.count = sum(count))
#   year count total.count
# 1 2000    14          28
# 2 2000    14          28
# 3 2000     0          28
# 4 2001     3          20
# 5 2001     8          20
# 6 2001     9          20
# 7 2002     5          21
# 8 2002     3          21
# 9 2002    13          21



# If you wanted to do both count and sum at the same time 
# against the raw table, you can use the “mutate” argument.

ddply(d, "year", mutate, total.count = sum(count), mean.count = mean(count))
#   year count total.count mean.count
# 1 2000    14          28   9.333333
# 2 2000    14          28   9.333333
# 3 2000     0          28   9.333333
# 4 2001     3          20   6.666667
# 5 2001     8          20   6.666667
# 6 2001     9          20   6.666667
# 7 2002     5          21   7.000000
# 8 2002     3          21   7.000000
# 9 2002    13          21   7.000000
