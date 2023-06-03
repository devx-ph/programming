def main():
    n = int(input("What's n? "))
    for s in sheep(n):
        print(s)


def sheep(n):
    for i in range(n):
        # return a value one at a time
        yield "🐑" * 1


if __name__ == "__main__":
    main()