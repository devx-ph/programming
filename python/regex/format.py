import re

name = input('What\'s your name? ')

if matches := re.search(r'^(.+), *(.+$)', name):
    # last, first = matches.groups()
    name = matches.group(2) + ' ' + matches.group(1)

print(f'hello, {name}')