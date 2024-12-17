import sympy


def to_q(l1, l2, l3, logq, logqh, use_l3):
    m = logq - logqh
    q = 2**(logq-1) + ((2**l1) - (2**l2) + (2**l3))*(2**m) + 1 if use_l3 else 2**(logq-1) + ((2**l1) - (2**l2))*(2**m) + 1
    return q


def to_q_inv(l1, l2, l3, logq, logqh, use_l3):
    m = logq - logqh
    q = 2**(logq-1) + ((2**l1) - (2**l2) + (2**l3))*(2**m) - 1 if use_l3 else 2**(logq-1) + ((2**l1) - (2**l2))*(2**m) - 1
    return q



def prothl_prime_gen(logq, logqh, debug=False, use_l3=True):

    m = logq - logqh

    def check_mu(n, l1, l2, l3):
        n_ = to_q_inv(l1, l2, l3, logq, logqh, use_l3)
        if n == n_:
            return True
        return False

    primes = {}

    for l1 in range(logq-2 - m, - 1, -1):
        for l2 in range(l1, - 1, -1):
            for l3 in range(logq-2 - m, - 1, -1):
                q = to_q(l1, l2, l3, logq, logqh, use_l3)
                if sympy.isprime(q) and q > 2**(logq-1) and q < 2**logq:
                    mu = pow(q, -1, 1 << logq)
                    mu_ = -mu & ((1 << logq) - 1)
                    assert (mu_ * q) & ((1 << logq) - 1) == ((1 << logq) - 1)
                    if (q not in primes) and check_mu(mu_, l1, l2, l3) and (q & ((1 << m) - 1) == 1):
                        if debug:
                            print(l1, l2, l3, hex(q), hex(mu_))
                        primes[q] = [l1, l2, l3] if use_l3 else [l1, l2]
                if not use_l3:
                    break

    if debug:
        print(len(primes))

    return [primes[k] for k in primes.keys()]


if __name__ == "__main__":
    prothl_prime_gen(32, 15, debug=True, use_l3=False)