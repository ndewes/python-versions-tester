from random import randbytes
from base64 import b64encode


def get_random_bytes_b64(length):
    bytes = randbytes(length)
    return b64encode(bytes).decode('utf-8')

def main():
    length = input('Länge: ')
    try: 
        length = int(length)
    except: 
        print('Ungültige Eingabe')
    
    print(get_random_bytes_b64(length))



if __name__=='__main__':
    main()