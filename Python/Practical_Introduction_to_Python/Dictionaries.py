# A dictionary is more general version of a list. Here

# Numbers of days in the months of the year
days = [31, 28, 31, 30, 31,30, 31, 31, 30, 31, 30, 31]

# For the number of days in January
print(days[0])

# Here is a dictionary of the days in the months of year
days = {'January':31, 'February':28, 'March':31, 'April':30, 
        'May':31, 'June':30, 'July':31, 'August':31, 
        'September':30, 'October':30, 'November':30, 'December':31}

# Using dictionaries  here is the code more readable, 
# and don't have to figure out which index in the list given month is at. 

# To get the number of days in November, we use daus['November']
print(days['November'])

# Let's start with this dictionary
d = {'A':100, 'B':200}
print(d)

# To change d['A'] to 400, do
d['A'] = 400
print(d)

# To add a new entry to the dictionary
d['C'] = 500
print(d)

# To delate an entry from a dictionary, use the del operator
del d['A']
print(d)

# Empty dictionary is {}. It is the dictionary equivalent of [] for
# list or '' strings

# Examples
# Example 1
d = {'dog': 'has a tail and goes woof!',
     'cat': 'says meow',
     'mouse': 'chased by cats'}

word = input('Enter a word: ')
print('The definition is:', d[word])