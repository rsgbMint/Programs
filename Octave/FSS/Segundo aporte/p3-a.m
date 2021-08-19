
[x, y] = meshgrid(-2:0.1:2);
z = x + y*i;                                
f = (x + i*y) + 1./(x + y*i)
cplxmap(f)
pause