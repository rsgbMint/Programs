import csv

# We create a dictionary
data = {'Full name': 'Roly Sandro', 'Age': '20', 'Country': 'Perú',
    'Marital status': 'sigle'}

with open("Roly's_data.csv", mode='w') as csvfile:
    csv_writer = csv.DictWriter(csvfile, fieldnames=data.keys())
    csv_writer.writeheader()
    csv_writer.writerow(data)