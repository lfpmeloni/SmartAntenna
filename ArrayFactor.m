function [ AF ] = ArrayFactor( d,N, thetha_zero)
An = 1;
AF=zeros(1,360);
for thetha=1:360
    %converter graus para radianos
    deg2rad(thetha)=(thetha*pi)/180;
    %array factor eh um somatorio dos N elementos 
    for n=0:N-1
        AF(thetha)=AF(thetha)+An*exp(j*n*2*pi*d*(cos(deg2rad(thetha))-cos(thetha_zero(n+1)*pi/180)));
    end
    %considera apenas a parte real do array factor
    AF(thetha)=abs(AF(thetha));
end
end

