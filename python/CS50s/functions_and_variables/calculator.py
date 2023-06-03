def main():
    x = int(input('What\'s x? '))
    print(f'x squared is {square(x)}')

def square(n):
    return pow(n, 2)

    # return n * n

    # Raise n to the power of 2 
    # return n ** 2 

main()
# Set the decimal places to 2 and round off the number
# print(f'{z:.2f}')

# Round off the number and set decimal places to 2 
# z = round(x / y, 2)

# Automatic format ',' in numbers
# print(f'{z:,}')