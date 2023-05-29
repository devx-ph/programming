# Ask user for their name, remove whitespace from str and capitalized user's name
name = input('What\'s your name? ').strip().title()

# Splits user's name into first name and last name
first, last = name.split(' ')

# Say hello to user
print(f'Hello, {first} {last}')