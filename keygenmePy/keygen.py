import hashlib

username_trial = b"FREEMAN"


def keygen():
    key = "picoCTF{1n_7h3_|<3y_of_"

    key += hashlib.sha256(username_trial).hexdigest()[4]

    key += hashlib.sha256(username_trial).hexdigest()[5]

    key += hashlib.sha256(username_trial).hexdigest()[3]

    key += hashlib.sha256(username_trial).hexdigest()[6]

    key += hashlib.sha256(username_trial).hexdigest()[2]

    key += hashlib.sha256(username_trial).hexdigest()[7]

    key += hashlib.sha256(username_trial).hexdigest()[1]

    key += hashlib.sha256(username_trial).hexdigest()[8]

    key += '}'

    print(key)


keygen()