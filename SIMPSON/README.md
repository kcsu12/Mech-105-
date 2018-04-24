# Simpson's 1/3 Function 
Simpson's 1/3 rule applies the use of calculating higher-order polynomials to 
connect points in order to get a more accurate estimate of an integral. The 1/3 
rule is applied to estimate polynomials that are of an odd degree. Such as if we
had a integral we were estimating of an even degree we would use the 3/8's rule.

# Inputs/Outputs
The function calls for 
* `x` which is the vector of a function with data point values x
* `y` which is the vector of a function with data point values y  
The function integrates `y` with respect to `x`
The function will then return 
* `I` which represents the calculated Simpson’s rule integral

# Errors 
The function checks that
* the inputs are of the same length
* `x` input is evenly spaced 

# Limitations 
However, in this functions case the function combines the use of the trapezoidal rule 
which is another integral estimate function such that if the user inputs a function of 
an even degree, the function will run through the input using 1/3's rule for all of
but the last degree of the function. The `disp` function will report if the trapezoidal 
rule was used by performing the `mod` function and dividing the function's length by 2 
and checking for that to equal zero resulting in an even length. 




     




