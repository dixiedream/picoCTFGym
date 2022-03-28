#!/bin/python

DEBUG = True

KEY_LENGTH = 50000

pAs = 0x6161616161616161616161616161616161616161616161616161616161616161

def genStrings():
    print("Here is the string for the first call")
    print("a"*(KEY_LENGTH - 32))
    print("Here is the string for the second call")
    print("a"*32)


def decode():
    eFlag = input("Enter the encrypted flag... ").rstrip()
    try:
        eFlag = int(eFlag, 16)  # interpret the input as a base-16 number, a hexadecimal.
    except ValueError:
        print("You did not enter a hexadecimal number!")
    eAs = input("Enter the encrypted A ").rstrip()
    try:
        eAs = int(eAs, 16)  # interpret the input as a base-16 number, a hexadecimal.
    except ValueError:
        print("You did not enter a hexadecimal number!")
    print("{:x}".format(eFlag^eAs^pAs))


genStrings()
decode()
