import matplotlib.pyplot as plt
import numpy as np

# RC series_circuit module
class rc_series_circuit:
    def __init__(self,E=20,r=100,c=0.0068):
        self.E = E # electromotive force value
        self.r = r # resistor value
        self.c = c # capacitor value
        self.output_graph()
        
    def rc_series_circuit_charge(self):
        # set up the parameter value  
        t = np.arange(0, 10, 0.01) # series_time range
        Vc = self.E*(1 - np.e**(-t/(self.r*self.c))) # charge function of the capacitor

        return t,Vc

    def rc_series_circuit_discharge(self):
        t = np.arange(0, 10, 0.01) # series_time range
        Vc = self.E*(np.e**(-t/(self.r*self.c))) # series_discharge function of the capacitor

        return t,Vc
    
    def output_graph(self):
        # configure the output graph 1
        t1,Vc1 = self.rc_series_circuit_charge()
        t2,Vc2 = self.rc_series_circuit_discharge()

        
        # rc_siries_circuit_charge plot
        plt.subplot(1,2,1)
        plt.title("Vc vs Time")
        plt.ylabel("Capacitor charge (V)")
        plt.xlabel("Time (s)")
        plt.plot(t1,Vc1)
        plt.grid("on")

        # rc_series_circuit_discharge plot
        plt.subplot(1,2,2)
        plt.title("Vc vs Time")
        plt.ylabel("Capacitor series_discharge (V)")
        plt.xlabel("Time (s)")
        plt.plot(t2,Vc2)
        plt.grid("on")
        plt.show()

circuit1 = rc_series_circuit(20,100,0.001)