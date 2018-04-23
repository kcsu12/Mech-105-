# LU Factorization function README

This LU factorization function contains use of matlab functions that preforms a
similiar processes to that of the already programed matlab function 'LU'. The 
function determines the LU Factorization of a squarematrix while also preforming  
the use partial pivoting depending if the matrix needs it. LU factorization's purpose
is to seperate the time consuming elimination of the matrix [A] from the manipulations
of the right hand side {b}, such that when [A] has been factored, multiple right hand
side vectors can be evaluted in an efficient manner. 
(Adapted from  McGraw-Hill Education 2018)

# Inputs  

The function calls for the user to input the following 
*'A' which is the matrix being evaluated
After 'A' is submited, the functions with run through a 
quick lists of errors such as if the matrix 'A' input 
is not square matrix or if the matrix input consisted of 
all zeros. The errors are checked by using 'if' statements.

# Definitions 

'eye' function = returns an array with ones on the main diagonal and zeros elsewhere. 
The size vector, sz, defines size(I). For example, eye([2,3]) returns a 2-by-3 array 
with ones on the main diagonal and zeros elsewhere.

'for' The for loop here goes through the rows and columns of the matrix 
and identifies the section that will be used to pivot and replacing 
and swaping the matrix until it is satisfied, meaning the matrix is now pivoted 
and ready to be evaluated. 
The code then performs the LU factorizations by definition LU in order to return 
the outputs of 
'L' which is the lower triangular matrix 
'U' which is the upper triangular matrix 
'P' which is the pivoted matrix 
If there is confusion or question in how the code performs or and error 
please refer to the comments and the procede to contact me through github. 





