clc
clear all
close all
x=[1 2 3 4 5 6];

pos=input('Enter the Zero index = ');
n=length(x);
y=sym('z');
b=0;
a=0;

for i=1:n
    if i>=pos
        b=b+x(i)*y^(pos-i);   
    else  
        b=b+x(i)*y^((-1)*(i-pos));
    end
end

disp('Z transform of x = ');
disp(  b);

        
        
    
