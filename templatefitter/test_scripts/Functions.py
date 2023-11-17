# Define the functions here that are used to interpolate the physical 
# observable in the chosen parameter space.

# For now, just polynomials available. Easy to add new functions though.

def linear_1d(x, a, b):
    return a + b*x


def pol_2order_1d(x, a, b, c):
    return a + b*x + c*x*x

def quad_1d(x, a, b):
    return a + b*x*x

def linear_2d(X,a,b,c):
    x,y = X
    return a + b*x + c*y


def pol_2order_2d(X, a, b, c, d, e, f):
    x,y = X
    return a + b*x + c*y + d*x*y + e*x*x + f*y*y

def quad_2d(X, a, b, c):
    x,y = X
    return a + b*x*x + c*y*y
