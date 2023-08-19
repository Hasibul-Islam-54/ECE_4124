clc;
clear all;

t=0:0.1:5;

x1= t>=0 & t<=1;
x2= t>=1.5 & t<=2.5;
x3= t>=3 & t<=4;
x=x1+2*x2+x3;

d1= t>=1 & t<=2;
d2= t>=2.5 & t<=3.5;
d3= t>=4 & t<=5;
d=d1+2*d2+d3;

N= -(length(t)-1):(length(t)-1);
c= xcorr(x,d);

subplot(3,1,1);
stem(x);
title('Input Signal');

subplot(3,1,2);
stem(d);
title('Delayed Signal');

subplot(3,1,3);
stem(N,c);
title('Correlated Signal');

