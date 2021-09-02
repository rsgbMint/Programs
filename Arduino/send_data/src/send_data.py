import serial, matplotlib.pyplot as plt, numpy as np
deArduino = serial.Serial('/dev/ttyACM0', 9600)
t=0

time = []
data = []
while(1):
    while(deArduino.inWaiting()==0):
        pass

    datoString = deArduino.readline()
    a = datoString.splitlines()
    a = str(a[0])
    a = a.split("'")
    print(a)
    a = float(a[1])

    data.append(a)
    time.append(t)

    plt.ylim(0, 1030)
    plt.xlim(0, 250)
    plt.plot(time, data, 'black')   
    plt.pause(0.01)
    t=t+1

plt.show()