from numpy import * 
from newton import *

def g(x): 
    return float(x)**2-1
def dg(x):
    return 2*float(x) 

x0 = 3
eps = 1e-3

    
y = newton (g, dg, x0, eps) 

print y 
