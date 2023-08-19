clc
clear all 

xn = input('Enter a Sequence');
bn = input('Enter another Sequence');
hn = fliplr(bn);

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

A=xcorr(xn,bn)

subplot(4,1,1)
stem (xn)
title('Input Sequence,xn')

subplot(4,1,2)
stem (bn)
title('Input Sequence,bn')

subplot(4,1,3)
stem (y)
title('Crosscorrelation,y(n)')

subplot(4,1,4)
stem (A)
title('Crosscorrelation Using xcorr Function')
