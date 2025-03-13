#!/usr/bin/python3

"""Task 7 module"""

import sys
import json

# Import necessary functions
from save_to_json_file import save_to_json_file
from load_from_json_file import load_from_json_file

# Collect arguments from the command line
arglist = list(sys.argv[1:])

# Attempt to load existing data from the JSON file
try:
    old_data = load_from_json_file("add_item.json")
except Exception:
    old_data = []

# Add new data from the command-line arguments
old_data.extend(arglist)

# Save updated data back to the JSON file
save_to_json_file(old_data, "add_item.json")
