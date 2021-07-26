import matplotlib.pyplot as plt
import numpy as np
import scipy.integrate as integrate

def exponential(x):
    return np.exp(x)

# To the domain time
t = np.arange(0,5,0.001)

# For plotting the chart
plt.plot(t,exponential(t))
plt.fill_between(t,exponential(t))
plt.grid('on')
plt.show()

# To show the area and its respective error 
area, error = integrate.quad(exponential,0,5)
print('area = {} \nerror = {}'.format(area, error))