import string

LOWERCASE_OFFSET = ord("a")
ALPHABET = string.ascii_lowercase[:16]

encodedFlag = "lkmjkemjmkiekeijiiigljlhilihliikiliginliljimiklligljiflhiniiiniiihlhilimlhijil"


def b16_decode(enc):
    plain = ""
    for i in range(0, len(enc), 2):
        first = "{0:04b}".format(ALPHABET.index(enc[i]))
        second = "{0:04b}".format(ALPHABET.index(enc[i + 1]))
        plain += chr(int(f"{first}{second}", 2))
    return plain


def unshift(c, k):
    t1 = ord(c) - LOWERCASE_OFFSET
    t2 = ord(k) - LOWERCASE_OFFSET
    return ALPHABET[(t1 - t2) % len(ALPHABET)]


for k in ALPHABET:
    string = ""
    for i, c in enumerate(encodedFlag):
        string += unshift(c, k[i % len(k)])
    plain = b16_decode(string)
    print(f"Key: '{k}'. Flag => {plain} \n")
