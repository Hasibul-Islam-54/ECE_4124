clc
clear all 

xn = input('Enter a Sequence');
hn = fliplr(xn);

L = length(xn);
M = length(hn);
X = [xn, zeros(1,L)]; 
H = [hn, zeros(1,M)]; 

for n = 1 : L+M-1
    y(n)=0;
    for i = 1 : L 
        if(n-i+1>0)
        y(n) = y(n)+X(i)*H(n-i+1)
       
        end
    end      
end

A=xcorr(xn,xn)

subplot(4,1,1)
stem (xn)
title('Input Sequence,x(n)')

subplot(4,1,2)
stem (hn)
title('Fliped Input Sequence,h(n)')

subplot(4,1,3)
stem (y)
title('Autocorrelation,y(n)')

subplot(4,1,4)
stem (A)
title('Autocorrelation Using xcorr Function')
