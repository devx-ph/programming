import csv

name = input('What\'s your name? ')
country = input('Where\'s your country? ')

with open('employees.csv', 'a') as file:
    writter = csv.DictWriter(file, fieldnames=['name', 'country'])
    writter.writerow({
        'name': name,
        'country': country
    })