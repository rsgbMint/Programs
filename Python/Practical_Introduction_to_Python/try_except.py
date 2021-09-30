# Raising an exception
x = 10
if x > 5:
    raise Exception(
        'x should not exceed 5. The value of x was {}'.format(x))

# The AssertionError Exception: asserting that the code will be executed on
                              # Linux system
import sys
assert('linux' in sys.platform), "This code runs on Linux system only"

# The try and except Block: Handling Exceptions
# In python is used to catch and handle exceptions.
# Try statement: this code block is executed as a "normal" part of the program.
# Except statement: is the prgrams's response to any exception in the
                  # preceding try clause.

# Example of the try and except block
def linux_interaction():
    assert('linux' in sys.platform), "Function can only run on Linux systems"
    print('Doing Something')

try:
    linux_interaction()
except:
    print('Linux function was not executed')
