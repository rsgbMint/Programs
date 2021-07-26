import matplotlib.pyplot as plt
import numpy as np
import scipy.integrate as integrate

def sen(x):
    return np.sin(x*180/np.pi)

# The time domain
t = np.arange(0, 0.5, 0.001)

# Setups  for plotting the chart
plt.plot(t,sen(t))
plt.fill_between(t,sen(t))
plt.grid('on')
plt.show()

# To show area and its respective error
area, error = integrate.quad(sen,0,5)
print('area = {}\nerror = {}'.format(area, error))