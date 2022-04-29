import numpy as np
import matplotlib.pyplot as plt

t = np.linspace(-2,2,100)
# a > 0
y1 = t**2

# a < 0
y2 = -t**2

# For subplotting
plt.subplot(121)
plt.grid(True)
plt.plot(t,y1)
plt.subplot(122)
plt.grid(True)
plt.plot(t,y2)
plt.show()
