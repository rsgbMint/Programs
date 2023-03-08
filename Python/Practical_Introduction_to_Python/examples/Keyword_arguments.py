# A related concept to default argument is "keywords arguments"

# Here we have a the fallowing function definition
def fancy_print(text, color,bacground,style,justify):
    pass
# Every time you call this function you have to remember 
# the correct order of the arguments.

# Python allows you to name the arguments when calling
# the function, as shown bellow
fancy_print(text='Hi', color='yellow', bacground='black',
                style='bold', justify='left')

# The order of the arguments does not matter when we use
# keyword arguments.
fancy_print(text='Hi', style='bold', justify='left',
            bacground= 'black', color='yellow')
 
