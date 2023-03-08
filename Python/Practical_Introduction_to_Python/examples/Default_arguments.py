# Default arguments need to come at the end of the
# function definition, after all the non-default
# arguments.
def multiple_print(string, n=1):
    print(string * n)
    print()

multiple_print('Hello', 5)
multiple_print('Hello')