def main():
    number = get_number()
    meow(number)

def get_number():
    while True:
        n = int(input('What\'s n? '))
        if n > 0:
            break
    return n

def meow(n):
    
# The '_' is used if you don't need to use a variable to run the code
    for _ in range(n):
        print('meow')

main()