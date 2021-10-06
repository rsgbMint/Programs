import os

# To read a file named data.txt. We use the try and except block
# in order to handle the FilenotFoundError exception 

try:
    # open() takes a filename and a mode as its arguments.
    # Opens the file in read only mode.
    with open('data.txt', 'r') as f:
        data = f.read()
        print(data)
except FileNotFoundError as error:
    print(error)
    print('There is no file named data.txt')

with open('data.txt', 'w') as f:
    data = 'Some data to be written to the file'
    f.write(data)
