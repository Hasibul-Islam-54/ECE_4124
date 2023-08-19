clc
clear all
close all

x=[1 2 5 7 0 1];
b=0;
n=length(x);
y=sym('z');

for i=1:n
    b=b+x(i)*y^(i-1);
end
disp('Z transform of x = ');
disp(b);