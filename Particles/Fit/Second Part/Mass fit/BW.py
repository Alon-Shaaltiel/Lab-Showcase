import numpy as np
from eddington import fitting_function

@fitting_function(n=3)
def  BW(a,x):
    return a[0]/((x**2-a[1]**2)**2+a[1]**2 * a[2]**2)