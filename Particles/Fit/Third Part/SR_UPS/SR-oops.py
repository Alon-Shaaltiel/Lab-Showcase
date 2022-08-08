from eddington import fitting_function
import numpy as np

@fitting_function(n=3)
def  BWoops(a,x):
    return a[0]/((x**2-a[1]**2)**2+a[1]**2 * a[2]**2)+450.4* np.exp(-0.4816 * x) + 72.966