# Lists are one of 4 build-in data types  in Python used to
# storage collections of data.

# Creating a list  
L = [1, 2, 3]

# To enter a list by the user
L = eval(input("Enter a list: "))
print("The list entered is:", L)

# Lists can contain all kinds of things, even other lists
L = [1, 2.718, 'abc', [5, 6, 7]]
print(L)

L = [1, 2, 3]

# in-- The in operator tells you if a list contain something
if 2 in L:
    print('Your list contain the number 2.')
if 0 not in L:
    print('Your list has no zeros.')

# For makinf copies of list
copy = L[:]
print(copy)

# Looping-- The same two types of loops that work for strings also work for lists.
for i in range(len(L)):
    print(L[i],end=' ')

# Example 1
# Create a program that generate a list of 50 random numbers
from random import randint
L = []
for i in range(50):
    L.append(randint(1,100))
print(L)

# Example 2
num_right = 0

# Question 1
print('What is the capital of France?', end=' ')
guess = input()
if guess.lower()=='paris':
    print('Correct!')
    num_right+=1
else:
    print('Wrong. The answer is Paris.')

print('You have', num_right, 'out of 1 right')

#Question 2
print('Which state has only one neighbor?', end=' ')
guess = input()

if guess.lower()=='maine':
    print('Correct!')
    num_right+=1
else:
    print('Wrong. The answer is Maine.')

print('You have', num_right, 'out of 2 right,')

# Example 2 using dictionaries
questions = {0: ['What is the capital of France?','paris'],
             1: ['Which state has only one neighbor?','maine']}
# Question 1
num_right = 0
for i in range(len(questions)):
    print(questions[i][0], end=' ')
    guess = input()
    if guess == questions[i][1]:
        print('Correct')
        num_right=num_right+1
    else:
        print('Wrong. The answer is', questions[i][1])
print('You have', num_right, 'out of', i+1, 'right.')
