import numpy as np
from eddington import fitting_function

@fitting_function(n=7)
def  BKG_JP(a,x):
    return a[0]*np.cos(a[1]*x+a[2]) + a[3]*np.cos(a[4]*x+a[5]) + a[6]