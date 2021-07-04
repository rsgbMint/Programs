# List comprehensions are a powerful way to create lists.

# Here is a simple example
L = [i*i for i in range(5)]
print(L)

#############################################################
# Example 1
string = 'Hello'
output = [c*2 for c in string]
print(output)

# Example 1 with the long way
L = []
for c in string:
    L.append(c*2)
print(L)

#############################################################
# Example 3
M = ['one', 'two', 'three', 'four', 'five', 'six']
output = [m[-1] for m in M]
print(output)