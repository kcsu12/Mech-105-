# False Position Function README 
False Position is a bracketing method that is used to come up with a root estimate.
The false position function works in a way such that it joins f(x1) and f(x2) with a 
straight line and that the intersection of this line with the x axis represents an 
improved estimate of the root. The formula for false position is 
xroot= xupper- f(xupper)(xlower-xupper)/(f(xlower)-f(xupper))

# Intended Use 
* Locating a root of a function 
* Checking work

# Function Inputs/Outputs  
The user will need to input at least these vectors 
* `func` function being evaluated  
* `xL` lower guess of the root
* `xu` upper guess of the root 
If the user chooses they have the option of inputting
* `es` the desired relative error 
* `maxiter` the number of iterations performed 
If no input is submitted the function will assume 
200 iterations default and an error of 0.0001%.

The code will then respond with the outputs of 
* `root` the estimated root location
* `fx` the function evaluated at the root location
* `ea` the approximate relative error % 
* `iter` how many iterations were performed

# Errors  
The code then performs a series of 'if' statements to make sure the criteria has been 
satisfied such as:
* if the number of function inputs is greater than or less than 3
* if `xL` is = to `xU` similiar sign 
* if  func(`xL`)*func(`xU`)  similar sign bounds 
* if `es` input is greater than 100 or less than 0  % error is impossible 
* if `maxiter` is less than 0, we can not perform zero iterations to solve.

The general process in which the code works follows directly with the guidelines of
false position and will apply the rules such as replacing old roots and redefining bounds  
until all is satisfied. See code commenting for more detail. If there are revisions 
or flaws in the code please contact me through github.




