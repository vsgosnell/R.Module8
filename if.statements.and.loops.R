# if statements
# If statements operate on length-one logical vectors.
# Syntax:
# if(cond1=true) { cmd1 } else { cmd2 }

if(1==0) {
  print(1) 
} else { 
  print(2) 
}
# [1] 2




# Loops
# The most commonly used loop structures in R are for, while and apply loops. 
# Less common are repeat loops.
# The break function is used to break out of loops, 
# and next halts the processing of the current iteration and advances the looping index.

# For loops are controlled by a looping vector. 
# In every iteration of the loop one value in the looping vector 
# is assigned to a variable that can be used in the statements of the body of the loop. 
# Usually, the number of loop iterations is defined by the number of values 
# stored in the looping vector and they are processed in the same order as they are stored in the looping vector. 

mydf <- iris

#creates empty storage container
myve <- NULL

# Note: inject approach is much faster than append with 'c'. See below for details.
for(i in seq(along = mydf[,1])) {
  myve <- c(myve, mean(as.numeric(mydf[i, 1:3]))) 
}

myve
# [1] 3.333333 3.100000 3.066667 3.066667
# [5] 3.333333 3.666667 3.133333 3.300000
# [9] 2.900000 3.166667 3.533333 3.266667 ... etc.


# Example of condition:
x <- 1:10
z <- NULL
for(i in seq(along = x)) {
  if(x[i] < 5) {
    z <- c(z, x[i] -1)
  } else {
    z <- c(z, x[i] / x[i])
  }
}

z
# [1] NA  0  1  2  3  1  1  1  1  1  1


