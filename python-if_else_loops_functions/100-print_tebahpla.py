#!/usr/bin/python3
for i in range(25, -1, -1):
    print("{:c}".format(i + 65) if i % 2 == 0 else "{:c}".format(i + 97), end="")
