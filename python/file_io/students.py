import csv

students = []

with open('students.csv', 'r') as file:

    # Using csv to file
    reader = csv.DictReader(file)
    for row in reader:
        students.append({
            'name': row['name'],
            'location': row['location']
        })

    # for line in sorted(file):
    #     name, country = line.rstrip().split(',')
    #     student = {
    #         'name': name,
    #         'country': country
    #     }
    #     students.append(student)

# lambda is used if you need function without a name
for student in sorted(students, key=lambda student: student['name']):
    print(f'{student["name"]} is in {student["location"]}')