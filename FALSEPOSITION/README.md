# False Position Function README 

False Position is a bracketing method that is used to come up with a root estimate.
The false position function works in a way such that it joins f(x1) and f(x2) with a 
straight line and that the intersection of this line with the x axis represents an 
improved estimate of the root. The formula for false position is 
xroot= xupper- f(xupper)(xlower-xupper)/(f(xlower)-f(xupper))

# Intended Use 
*Locating a root of a function 
*Checking work

# How the function works 
The user will need to input at least these vectors 
*'func' 
*'xL'
*'xu'
If they choose to they may also input
*'es'
*'maxiter'
which will account for relative error and number of iterations 
they would like to run to. If no input the function will assume 
200 iterations default and an error of 0.0001%.

The code will then respond with the outputs of 
*'root'
*'fx'
*'ea'
*'iter'
which will tell the user where the root was located, 
the evaluated root location, as well as the number of iterations performed,
and approximate relative error.  
The code then performs a series of 'if' statements to make sure the criteria has been 
satisfied and proceeds with eliminating errors that may arise if the vectors are not
properly input.

The general process in which the code works follows directly with the guidelines of
false position and will apply the rules such as replacing old roots and redefining bounds  
until all is satisfied. See code commenting for more detail. If there are revisions 
or flaws in the code please contact me through github.




