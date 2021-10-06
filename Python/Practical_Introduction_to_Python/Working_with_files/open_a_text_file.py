import os

# To read a file named data.txt. We use the try and except block
# in order to handle the FilenotFoundError exception 
try:
    with open('data.txt', 'r') as f:
        data = f.read()
except FileNotFoundError as error:
    print(error)
    print('There is no file named data.txt')
