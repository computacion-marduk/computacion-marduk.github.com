from numpy import *

n = 4

suma_amigos = 0

while (n < 10000):
    suma_div1 = 1
    suma_div2 = 1
    # Buscamos los divisores propios de n
    for r in range(2,n/2+1):
        if n%r == 0:
            suma_div1 = suma_div1 + r
    # Si n no es primo
    if suma_div1 > 1:
        for r in range(2, suma_div1/2+1):
            if suma_div1 % r == 0:
                suma_div2 = suma_div2 + r
        if suma_div2 == n and n != suma_div1:
            print n, suma_div1
            suma_amigos = suma_amigos + n + suma_div1
    n = n + 1
    
print suma_amigos
