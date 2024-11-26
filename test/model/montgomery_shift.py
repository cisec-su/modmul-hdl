from .prothl_prime_gen import to_q, to_q_inv

def montgomery_shift(c, l1, l2, l3, logq, logqh, use_l3=True, correct=True, debug=False):
    q = to_q(l1, l2, l3, logq, logqh, use_l3)
    q_inv = to_q_inv(l1, l2, l3, logq, logqh, use_l3)
    assert (q_inv * q) & ((1 << logq) - 1) == ((1 << logq) - 1)

    cl = c & ((1 << logq) - 1)
    t0 = cl * q_inv
    t0l = t0 & ((1 << logq) - 1)
    t1 = t0l * q
    t2 = t1 + c

    if debug:
        print("q: ", hex(q))
        print("q_inv: ", hex(q_inv))
        print("cl: ", hex(cl))
        print("ch: ", hex(c >> logq))
        print("t0: ", hex(t0))
        print("t0l: ", hex(t0l))
        print("t1: ", hex(t1))
        print("t2: ", hex(t2))

    assert t2 & ((1 << logq) - 1) == 0

    t3 = t2 >> logq

    if debug:
        print("t3: ", hex(t3))

    t_ = ((c * pow(2, -(logq), q) ) % q)
    assert (t3 == t_) or ((t3 - q) == t_)

    if debug:
        print("t_: ", hex(t_))

    if not correct:
        return t3
    else:
        return t_

