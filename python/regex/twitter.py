import re

url = input('URL: ').strip()

# ':=' use walrus if you want to asign something from right to left in a if statement 
if matches := re.search(r'^(?:https?://)?(?:www\.)?twitter\.com/([a-z0-9_]+)', url, re.IGNORECASE):
    print(f'Username {matches.group(1)}')
else: 
    print('Not a vaild URL')