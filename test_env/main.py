# -*- coding: utf-8 -*-

if __name__ == '__main__':
    import sys

    p = sys.argv[1]

    print(p)

    print(repr(p[1:-1]))

    print(p.encode())
