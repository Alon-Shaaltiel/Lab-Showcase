import numpy as np
from eddington import fitting_function


@fitting_function(n=3)
def  Tau(a,x):
    return a[0]*np.exp(-x/a[1])+a[2]