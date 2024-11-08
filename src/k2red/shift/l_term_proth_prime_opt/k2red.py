import math
import sympy

"""
K^2RED N Term proth prime optimized reduction
"""


def k2red(a, l1, l2, l3, m, q, w, debug=False):
    C_0_L = a & ((1 << m) - 1)  # take the least significant m-bits
    C_0_H = a >> m  # 64-m (2^m > k)
    if debug:
        print("C_0_L", C_0_L)
        print("C_0_H", C_0_H)

    C_1 = ((C_0_L << (w - 1 - m)) + (C_0_L << l1) + (C_0_L << l3)) - ((C_0_L << l2) + C_0_H)

    C_1_L = C_1 & ((1 << m) - 1)  # C_1_L       = C_1 % (1 << m)
    C_1_H = C_1 >> m  # 64-m bit
    if debug:
        print("C_1_L", C_1_L)
        print("C_1_H", C_1_H)

    C_2 = ((C_1_L << (w - 1 - m)) + (C_1_L << l1) + (C_1_L << l3)) - ((C_1_L << l2) + C_1_H)
    if (C_2 >= q):  # this is required, but we need proof (how do we do this efficiently in hardware)
        C_2 = C_2 - q
    elif C_2 < 0:
        C_2 = C_2 + q

    return C_2

def proth_prime_gen(w,n,debug=False):
    """
    For num_l  = 3
    """
    primes = []
    params = []
    m = math.ceil(math.log2(2*n))
    for l1 in range(1,w-1-m):
        for l2 in range(1,l1): # limiting l1 is an optimization?
            for l3 in range(1,w-1-m):
                k = pow(2,w-1-m) + pow(2,l1) - pow(2,l2) + pow(2,l3)
                q = k*pow(2,m)+1
                isprime = sympy.isprime(q)
                if isprime and q not in primes:
                    primes.append(q)
                    params.append((m,l1,l2,l3))
    if debug:
        print(len(primes))
        print(primes)
        print(params)
    
    return primes, params

w = 64
n = pow(2,46)
primes, params = proth_prime_gen(w,n)
print(len(primes))
for p in primes:
    if (p % (2*pow(2,16))) != 1:
        print("Error", p,hex(p))

print(primes)
print(params)

l1s = [l1 for (_,l1,_,_) in params]
l2s = [l2 for (_,_,l2,_) in params]
l3s = [l3 for (_,_,_,l3) in params]
# print(max(l1s))
# print(max(l2s))
# print(max(l3s))

all_ls = l1s + l2s + l3s
print(max(all_ls))
print("LOG_L =",math.ceil(math.log2(max(all_ls))))

q = primes[0]
print("q",q,hex(q))
m,l1,l2,l3 = params[0]
w = 64
k = pow(2,w-1-m) + pow(2,l1) - pow(2,l2) + pow(2,l3)

for i in range(0,(q-1)*(q-1),pow(2,124)+1):
  a = i
  a_= (a * pow(k,2,q)) % q
  print("a,a_ =",a,a_)
  if k2red(a,l1,l2,l3,m,q,w) != a_:
    print("Error:",a,k2red(a,l1,l2,l3,m,q,w,True),a_)