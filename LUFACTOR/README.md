# LU Factorization function README

This LU factorization function contains use of matlab functions that preforms a
similiar processes to that of the already programed matlab function `LU`. The 
function determines the LU Factorization of a squarematrix while also preforming  
the use partial pivoting depending if the matrix needs it. LU factorization's purpose
is to seperate the time consuming elimination of the matrix [A] from the manipulations
of the right hand side {b}, such that when [A] has been factored, multiple right hand
side vectors can be evaluted in an efficient manner. 
(Adapted from  McGraw-Hill Education 2018)

# Inputs/Outputs  
The function calls for the user to input the following 
* `A` which is the coefficent matrix being evaluated
The function will then output the following 
* `L` which is the lower triangular matrix 
* `U` which is the upper triangular matrix 
* `P` which is the pivoted matrix 

# Errors 
After `A` is submited, the functions with run through a 
quick lists of errors such that:
* if the coefficent matrix `A` inputed is not square matrix 
* if the coefficent matrix `A` inputed consisted of all zeros. 

# Definitions 
* `eye` function = returns an array with ones on the main diagonal and zeros elsewhere. 
The size vector, sz, defines size(I). For example, eye([2,3]) returns a 2-by-3 array 
with ones on the main diagonal and zeros elsewhere.
* `for` The for loop here goes through the rows and columns of the matrix `A`
and identifies the section that will be used to pivot amd will then proceed to replace 
and swap the rows and columns of the matrix until it is satisfied. All while keeping 
track of these changes with it's `L` `U` and `P` matrix. See commenting for more details.




