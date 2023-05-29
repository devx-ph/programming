def main():
    x = input('What\'s x? ')
    print(f'x squared is {square(x)}')

def square(n):
    return n * n

# Main will only execute if file name is ran
if __name__ == '__main__':
    main()