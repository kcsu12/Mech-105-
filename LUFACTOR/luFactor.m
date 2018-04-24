function[L,U,P]=luFactor(A)
% function used to perform luFactorization 
%L= lower triangular matrix
%U= upper triangular matrix
%P= the pivot matrix 
[m,n]= size(A); %the size of the matrix will be recorded 
if m~=n %using an if statement the dimensions of the matrixs inputed will be tested to make sure they are square
     error('Please enter a SQUARE matrix')% if the dimensions of the matrix are not square we cannot solve using this method 
end
if A == zeros(m,n)
    error('Cant evaluate a zero matrix')
end

P=eye(size(A)); %whatever the size of A matrix is will be the size of the indentity pivot matrix 
U=A; %defining the upper triangular matrix as A which will later be evaluated  
L=eye(size(A)); %initial lower triangular matrix 
  for c=(1:n-1)  %n number of columns 
      for r=(c+1:n) %n number of rows 
             [~,max_1]= max(abs(U(c:n,c)));%searching for absolute max within the matrix 
             max_1 = max_1+(c-1);         % based on max we later swap the rows of the matrix
             
             x= P(c,:); 
             t=P(max_1,:); %P matrix is corrected to the swap of U matrix
             P(c,:)=t;     
             P(max_1,:)=x; %storing the values of the swap
             
             x= L(c, 1:c-1);              %L matrix pivoting 
             L(c,1:c-1) = L(max_1,1:c-1); %swaping rows 
             L(max_1,1:c-1) = x;          %storing the values of the swap
             
             x = U(c,c:n);                %U matrixs pivoting 
             U(c,c:n) = U(max_1,c:n);     %swaps the rows of the that of maximums 
             U(max_1,c:n) = x;            %storing of the swap values 
            
             L(c,c)=1;
             constant= U(r,c)/U(c,c);         
             L(r,c)=constant 
             U(r,:)= U(r,:)-(constant.*U(c,:)); %subtraction of the rows 
      end
  end
end
 

        




    

