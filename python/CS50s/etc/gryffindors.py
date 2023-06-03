students = [
    {"name": "Hermione", "house": "Gryffindor"},
    {"name": "Harry", "house": "Gryffindor"},
    {"name": "Ron", "house": "Gryffindor"},
    {"name": "Draco", "house": "Slytherin"},
]


def is_gryffindor(s):
    if s["house"] == "Gryffindor":
        return True
    else:
        return False


# Using filter
# use filter if you want to return true or false, else use a map
gryffindors = filter(is_gryffindor, students)

for gryffindor in sorted(gryffindors, key=lambda s: s["name"]):
    print(gryffindor["name"])


# list comprehensions
# gryffindors = [
#     student["name"] for student in students if student["house"] == "Gryffindor"
# ]


# for gryffindor in sorted(gryffindors):
#     print(gryffindor)
