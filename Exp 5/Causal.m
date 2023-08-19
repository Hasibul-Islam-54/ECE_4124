clc
clear all
close all

x=[5 2 5 7 8 1];
b=0;
n=length(x);
y=sym('z');

for i=1:n
    
    b=b+x(i)*y^(1-i);
end
disp('Z transform of x = ');
disp(b);