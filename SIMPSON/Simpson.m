function[I] = Simpson(x,y) 
%function numerically evaluates the integral of the vector of function
%values ‘y’ with respect to ‘x’
if length(x)~=length(y)%check to see if the input of x and y vectors will be equal in length
    error('vector of x and y are not the same length kook') 
end % if they are not the same simpson's rule can not be applied
z=diff(x);  % difference funct to check to see if there is a difference in vector spacing 
if all(z)~=1 
    error('unevenly spaced vector kook"d it')
end
n=length(x); %lenth of x is used to determine if odd or even
width= (x(n-1)-x(1)); %calculating width of section
y1= y(1);             %defining terms in simpon's 1/3 
y4= y(n-1);
oddindices=2:2:(n-1);  
y2= 4*sum(y(oddindices)); %simps formula
evenindices=3:2:(n-2);    
y3= 2*sum(y(evenindices));%simps formula
S=width*(y1+y2+y3+y4)/(3*(n-2)); %equating simpson 1/3 rule
T=(y(n)+y(n-1))/2*(x(n)-(x(n-1))); %if trap was nessesary 
I=S+T;
if mod(n,2)==0 % mod function divides n by 2 to see if it will return an 0 which is even or 1 which is odd 
    disp('Trapezoid rule was used for last approximation')
end


