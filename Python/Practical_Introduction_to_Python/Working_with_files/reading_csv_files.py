import csv

# Reading CSV Files with csv
# Opens a csv file
with open('csv_file.csv') as f:
    # Reads a csv file with the Python's built-in reader() function
    # row by row.
    csv_reader = csv.reader(f, delimiter=',')
    
    # row variable returns a string list elements containing the 
    # data found by removing the delimeters.
    for row in csv_reader:
        print(row)
        