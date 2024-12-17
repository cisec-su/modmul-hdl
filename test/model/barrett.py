def barrett(x, logq, mu, q, debug=False, correct=True):
    if debug:
        print("x: ", hex(x))
        print("logq: ", hex(logq))
        print("mu: ", hex(mu))
        print("q: ", hex(q))
    if debug:
        print("x >> logq: ", hex(x >> logq))
    q1 = (x >> logq) * mu
    if debug:
        print("q1: ", hex(q1))
    q2 = (q1) >> logq
    t = q2 * q - x
    if debug:
        print("q2: ", hex(q2))
        print("t: ", hex(t))
    tn = - t
    if debug:
        print("tn: ", hex(tn)) 
    if not correct:
        return tn
    if tn >= q:
        tn = tn - q
    if tn >= q:
        tn = tn - q
    return tn


def precomp(logq, q):
    return (1 << (2 * logq)) // q