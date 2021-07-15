# * before a parameter name to indicate that 
#   it is a variable-length tuple of positional parameters

# we can use ** to indicate that a parameter is a variable-length
# dictionary of keyword parameters
##############################################################################

# Here we're going to use * and ** for packing
# for positional parameters (tuple)
def print_args(*args):
    print(args)

args = print_args(3, 4, 'hello')

# for keyword parameters (dictionary)
def print_kwargs(**kwargs):
    print(kwargs)

kwargs = print_kwargs(name='Roly', surname='Sandro' , age=20)
##############################################################################

# Now, we're going to use for unpacking into a series of individual parameters
my_list = [3, 4, 'hello']
print_args(*my_list)

my_dict = {"name":"Roly", "surname":"Sandro", "age": 20}
print_kwargs(**my_dict)
##############################################################################

# We can mix parameters, *args and **kwargs in the same function
# *args and **kwargs must come after all the other parameters
# **kwargs must come after *args
def print_everything(*args, **kwargs):
    for arg in args:
        print(arg)

    for k,v in kwargs.items():
        print("%s: %s" % (k,v)) 

print_everything(*my_list, **my_dict)