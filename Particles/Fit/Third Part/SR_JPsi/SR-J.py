from eddington import fitting_function
import numpy as np

@fitting_function(n=3)
def  BWJPSI(a,x):
    return a[0]/((x**2-a[1]**2)**2+a[1]**2 * a[2]**2)+199*np.exp(-((x - 2.13501) / 1.5841)**2) +54.826
