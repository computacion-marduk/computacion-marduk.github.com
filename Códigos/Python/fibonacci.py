from numpy import *
from sys import argv

"""
Este programa calcula la suma de los primeros n terminos pares de la sucesion de Fibonacci
"""

print argv[0], argv[1]

def fibonacci(n):
    a = 0

    b = 1
    
    contador = 0

    c = a + b
    #lista con las sumas parciales en cada paso
    suma_acum = [] 
    suma = 0

    while c < n:
        c = a + b
        if c%2 == 0:
            suma = suma + c 
            suma_acum.append(suma)
        a = b
        b = c
        contador += 1
        print contador
    
    return suma_acum
    
print fibonacci(argv[1])
