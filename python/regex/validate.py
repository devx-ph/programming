import re

email = input('What\'s your email? ').strip()

# 'r' treat it as a raw string 
if re.search(r'^\w+(\.\w+)?@(\w+\.)?\w+\.(com|edu|org|gov)$', email, re.IGNORECASE):
    print('Vailid')
else:
    print('Invalid')

# .         any character except a new line 
# *         0 or more repetitions
# +         1 or more repetitions 
# ?         0 or 1 repetitions
# {m}       m repetitions
# {m,n}     m-n repetitions
# ^         matches the start of the string 
# $         matches the end of the string or just before the newline at the end of the string
# []        set of characters
# [^]       complementing the set
# \d        decimal digit
# \D        not a decimal digit
# \s        whitespace characters
# \S        not a whitespace character
# \w        word character ... as well as nubmers and underscores
# \W        not a word character
# A|B       either A or B
# (...)     a group
# (?:...)   non-capturing version

# Simplified regex on email used in browsers
""" 
^[a-zA-Z0-9.!#$%&'*+\/=?^_`
{|}~-]+@[a-zA-Z0-9](?:[a-zA
-Z0-9-]{0,61}[a-zA-Z0-9])?(
?:\.[a-zA-Z0-9](?:[a-zA-Z0-9])?)*$
"""