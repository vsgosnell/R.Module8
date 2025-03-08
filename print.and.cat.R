# Printing to the R console is a core part of a function and package, specifically when returning complicated objects.
# Print can also be used to run a calculation.

x = 2
y = c(1,2)
print(x^2)
#returns 4

print(y^2)
#returns 1 4





# Cat() is better used when dealing with characters and strings.
# It has default handling for spaces and quotation marks

print("abc")
#returns "abc"

cat("abc\n")
#returns abc

#remember: \n is break-line

#cat() has many useful functions including string formatting

x = c(5,12,13,8,88)
cat(x, sep = c(".",".",".","\n","\n"))
#returns 5.12.13.8
#        88



