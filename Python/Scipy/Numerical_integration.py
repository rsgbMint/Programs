import numpy as np
import matplotlib.pyplot as plt
# a and b are the limits
a = 0; b =1

# Number of rectangles 
N =10

# Are the x-axis values
x = np.linspace(a,b, N +1)

# The function
y = x**2;
 
# Are the y-axis values
y_right = y[1:]
y_left = y[:-1]

# Trapezoid Rule
dx = (b - a)/N
A = (dx/2)*np.sum(y_right + y_left)

# To show the area
print('A =',A)