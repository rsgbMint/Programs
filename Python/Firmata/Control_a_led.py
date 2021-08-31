import pyfirmata, time
pin = 7
port = '/dev/ttyACM0'
board = pyfirmata.Arduino(port)

for x in range(5):
    board.digital[pin].write(1)
    time.sleep(0.5)
    board.digital[pin].write(0)
    time.sleep(0.5)
board.exit()