%% HW 9
function[root,fx,ea,iter]= falsePosition(func,xL,xU,es,maxiter)
%inputs
%xL- the lower guess
%xU- the upper guess 
%es- the desired relative error (should default to 0.0001%) 
%maxiter- the number of iteration desired (should default to 200) 
%
%Outputs 
%root- the estimated root location 
%fx- the function evaluated the root location 
%ea- the approximate relative error (%) 
%iter - how many iterations were performed 

if nargin==3    %condition when user inputs 3 arguements
    es= 1e-4;    %es will be assumed as 1e-4
    maxiter=200;
elseif nargin==4 
    maxiter=200;    %maxiter will be assumed as 200
elseif nargin <6    %when arguements are satisfied run code
    disp('lets go baby!!') 
end
%(Posible Errors)
if xL == xU %code will not run properly
    error('error no roots will be evaluated due to similar sign')
end
if func(xL)*func(xU) > 0 %code will not run properly
    error('cant have similar sign bounds')
end

if (es> 100) || (es<0) %code will not run properly
    error('cant have error greater 100% or less than zero')
end

if maxiter < 0 %code will not run properly
error('error iteration cant be less than zero')
end

ea=100;
oldroot=xL;
iter=0;
while (ea>=es) && (maxiter>iter) 
    root= xU-(func(xU)*(xL-xU))/(func(xL)-func(xU)); %false position func
    fx= func(root);  %the function evaluated the root location 
    iter= iter+1;  %iteration counter 
    if sign(func(xL))*sign(func(root))==-1 %redefining lower bound as root
        xU=root;
    elseif sign(func(xU))*sign(func(root))== -1 %redefining upper bound as root
        xL=root;
    end
    ea= abs((root-oldroot)/root)*100; %relative percent error
    oldroot=root;
    
end 
fprintf('iter')
end
    





