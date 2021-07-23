import numpy as np
import matplotlib.pyplot as plt
import scipy.integrate  as integrate

def rectangular(t):
    # The rectangular pulse will have to parts:
    # First part
    rec1 = (t>=0)*1
    # Second part
    rec2 = (t>4)*1

    return rec1 - rec2

# For the domain
t = np.arange(-1,5,0.001)
plt.plot(t,rectangular(t))
plt.fill_between(t,rectangular(t))

plt.grid('on')
plt.show()

A, e = integrate.quad(rectangular,0,4)
print(A)