def main():
    name = input("What's your name? ").strip().title()
    hello(name)


def hello(to="World"):
    print(f"Hello, {to}")


main()
