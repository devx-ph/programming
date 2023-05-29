def main():
    hello('world')
    goodbye('world')

def hello(name):
    print(f'hello, {name}')

def goodbye(name):
    print(f'goodbye, {name}')

# Main function will be only printed if the sayings.py is ran at the terminal
if __name__ == '__main__':
    main()