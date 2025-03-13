#!/usr/bin/python3

"""Module for converting a JSON string back into a Python object."""

import json


def from_json_string(my_str):

    """Returns the Python object represented by a JSON string."""

    return json.loads(my_str)
