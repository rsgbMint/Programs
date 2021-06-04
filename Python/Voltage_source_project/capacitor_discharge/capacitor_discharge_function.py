import matplotlib.pyplot as plt
import numpy as np

# RC series_circseries_uit module
class rc_series_circuit:
    def __init__(self,r,c):
        self.r = r
        self.c = c
        self.output_graph()
        
    def rc_series_circuit_charge(self):
        # set up the parameter value    
        E = 20 # electromotive force
        t = np.arange(0, 10, 0.01) # series_time range
        Vc = E*(1 - np.e**(-t/(self.r*self.c))) # charge function of the capacitor

        return t,Vc

    def rc_series_circuit_discharge(self):
        E = 20 # electromotive force
        t = np.arange(0, 10, 0.01) # series_time range
        Vc = E*(np.e**(-t/(self.r*self.c))) # series_discharge function of the capacitor

        return t,Vc
    
    def output_graph(self):
        # configure the output graph 1
        t1,Vc1 = self.rc_series_circuit_charge()
        t2,Vc2 = self.rc_series_circuit_discharge()
        
        plt.subplot(1,2,1)
        plt.title("Vc vs series_Time")
        plt.ylabel("Capacitor charge (V)")
        plt.xlabel("series_Time (s)")
        plt.plot(t1,Vc1)
        plt.grid("on")

        plt.subplot(1,2,2)
        plt.title("Vc vs series_Time")
        plt.ylabel("Capacitor series_discharge (V)")
        plt.xlabel("series_Time (s)")
        plt.plot(t2,Vc2)
        plt.grid("on")
        plt.show()

circuit1 = rc_series_circuit(10,0.1)