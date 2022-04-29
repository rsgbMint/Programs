import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-4,1,10000)
y = (x**2-x)/(x**2+x)

plt.grid("on")
plt.plot(x,y)
plt.show()
