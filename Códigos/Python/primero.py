from numpy import *

s = 0

for x in range(1,1000):
    if x%3 == 0 and x%5 == 0:
            s = s + x
print s
