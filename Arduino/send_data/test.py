import matplotlib.pyplot as plt
import serial
import keyboard

deArduino = serial.Serial('/dev/ttyACM0', 9600)

# Default values
value = True
t=0
data = []
time = []


while(value):
    while(deArduino.inWaiting()==0):
        pass
    datoString = deArduino.readline()
    a = datoString.splitlines()
    a = str(a[0])
    a = a.split("'")
    print(a)
    a = float(a[1])
    a = a*(5/1023)
    a = round(a,2)

    data.append(a)
    print(data)
    time.append(t)
    print(data)

    plt.figure("hello")
    plt.ylim(0, 6)
    plt.plot(time, data, 'red')   
    plt.grid(True)
    plt.tight_layout()
    plt.pause(0.001)
    t = t + 0.5

    if t == 100:
        data = []
        time = []
        plt.figure("hello").clear()
        t = 0
    if keyboard.is_pressed('q'):
        print("stopping")
        value = False

plt.show()
