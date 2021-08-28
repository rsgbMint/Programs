clear all
clc
function roots(z,n,k)
    r = abs(z);
    theta = arg(z);
    w_k = r**(1/n)*(cos((theta + 2*k*pi)/n) + i*sin((theta + 2*k*pi)/n))
end

roots(1+i,4,0)
roots(1+i,4,1)
roots(1+i,4,2)
roots(1+i,4,3)