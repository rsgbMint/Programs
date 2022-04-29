import numpy as np
import matplotlib.pyplot as plt

# Parameters
n = 2001
a = 5.0

phi = np.linspace(0, 4.0*np.pi, n)
curve = a*phi

# Get an axes handle/objetc
plt.subplot(111,polar=True)

# Plot the figure
plt.plot(phi,curve,color='xkcd:salmon', label=r'$\rho=a\cdot\varphi$')
plt.title('Espiral de Arquímedes')
plt.grid(True)
plt.legend()
plt.show()
