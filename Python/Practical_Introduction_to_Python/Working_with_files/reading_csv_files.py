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

# Reading CSV Files into Dictionary with csv
with open('csv_file.csv') as f:

    # Reads a csv file with as a dictionary where the keys are the
    # first line of the CSV file.
    csv_reader = csv.DictReader(f)

    # row variable returns a dict wher the keys are the first line or row
    for row in csv_reader:
        print(row)