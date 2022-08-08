import eddington
import numpy as np

@eddington.fitting_function(
    n=3,
    a_derivative=lambda a, x: np.stack([np.exp(-a[1]*x)*a[2]*x/np.sinh(a[2]*x),
                                        -a[0]*x*np.exp(-a[1]*x)*a[2]*x/np.sinh(a[2]*x),
                                        x*np.exp(-a[1]*x)*a[2]*(1/np.sinh(a[2]*x)-a[2]*x/(np.sinh(a[2]*x)*np.tanh(a[2]*x))),
                                        ]),
    syntax="a[0]*np.exp(-a[1]*x)*a[2]*x/np.sinh(a[2]*x)")
def Outer(a,x):
    return a[0]*np.exp(-a[1]*x)*a[2]*x/np.sinh(a[2]*x)