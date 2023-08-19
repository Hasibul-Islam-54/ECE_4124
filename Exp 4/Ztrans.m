clc;
clear all;

x = [1, 2, 3, 4, 5];
H=0;

N = length(x);
y= sym('Z');

for i=1:N
    H= H+x(i)*y^(1-i);
end

display(H);

