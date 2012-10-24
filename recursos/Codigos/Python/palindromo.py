from numpy import *

a = 999
b = 999

palindromico = 0

for x in range(100,a+1):
    for y in range(100,b+1):
        p = x*y
        palabra = str(p)
        if palabra == palabra[::-1]:
            if p > palindromico:
                palindromico = p
                
print palindromico
