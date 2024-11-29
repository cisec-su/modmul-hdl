import sympy


def ntt_friendly_prime_gen(logq, logqh, num_primes=None, debug=False, random=None):

    primes = []

    def core(qH):
        q = (1 << (logq - 1)) + 1 + (qH << (logq - logqh))
        if sympy.isprime(q) and q < (1 << logq) and q > (1 << (logq - 1)):
            if debug:
                print(q, hex(q), len(bin(q)[2:]), hex(q % (1 << (logq - logqh))), len(primes))
            primes.append(q)
            if num_primes is not None and len(primes) >= num_primes:
                return primes

    if random is None:
        for qH in range(1, pow(2, (logqh - 1))):
            core(qH)
    else:
        l = pow(2, (logqh - 1)) + 1
        for _ in range(num_primes):
            qH = random.randint(1, l)
            core(qH)

    if debug:
        print(len(primes))

    return primes


if __name__ == "__main__":
    ntt_friendly_prime_gen(60, 17, None, True)