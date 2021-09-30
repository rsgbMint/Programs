# Using a build-in exception
try:
    with open('file.log') as file:
        read_data = file.read()
except:
    print('Could not open file.log')

# To catch this type of exception and print it to screen
try:
    with open('file.log') as file:
        read_data = file.read()
except FileNotFoundError as fnf_error:
    print(fnf_error)


    