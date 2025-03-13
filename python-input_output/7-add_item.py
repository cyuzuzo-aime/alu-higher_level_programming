#!/usr/bin/python3

"""Module for adding command-line arguments to a list and saving them to a JSON file.

This script loads a list from a JSON file named 'add_item.json', adds all
command-line arguments to the list, and saves the updated list back to the file.
If the file doesn't exist, it creates the file and initializes the list.
"""

import sys
from save_to_json_file import save_to_json_file
from load_from_json_file import load_from_json_file


def main():
    """Adds arguments to a list and saves them to a JSON file."""
    
    try:
        items = load_from_json_file('add_item.json')
    except FileNotFoundError:
        items = []
    
    items.extend(sys.argv[1:])
    save_to_json_file(items, 'add_item.json')


if __name__ == '__main__':
    main()

