#!/usr/bin/python3
import hidden_4


def main():
    names = dir(hidden_4)
    filterednames = sorted(name for name in names if not name.startswith('__'))
    for name in filterednames:
        print(name)


if __name__ == "__main__":
    main()
