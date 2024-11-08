def wlm_iter(c, w, q, debug=False):
    T1 = c
    T1H = T1 >> w
    T1L = T1 & ((1<<w)-1)
    if debug:
        print("T1H: ", hex(T1H))
        print("T1L: ", hex(T1L))
    T2 = (-T1L) & ((1<<w)-1)
    if debug:
        print("T2: ", hex(T2))
    c = (T2 | T1L) >> (w - 1)
    if debug:
        print("c: ", hex(c))
    qh = q >> w
    if debug:
        print("qh: ", hex(qh))
    if debug:
        print("(qh)*T2: ", hex((qh)*T2))
    T3 = T1H + (qh)*T2 + c
    if debug:
        print("T3: ", hex(T3))
    return T3


def wlm(c, q, logq, logqh, correct=True, debug=False):
    w = logq - logqh
    iter = ((logq - 1) // (w)) + 1
    c0 = c
    if debug:
        print(iter)
    w_sum = 0
    for i in range(iter):
        w_i = logq - i*(w) if i == iter-1 else w
        if debug:
            print(i, w_i)
        w_sum += w_i
        c = wlm_iter(c, w_i, q)

    if debug:
        print(w_sum)

    t = ((c0 * pow(2, -(w_sum), q) ) % q)
    assert (c == t) or ((c - q) == t)

    if correct:
        return t
    else:
        return c


def wlm_mixed(c, q, logq, logqh, dsp_a, dsp_b, correct=True, debug=False):
    w = logq - logqh
    if (logqh <= dsp_b):
        d = dsp_a
    else:
        d = dsp_a
    if (w > d):
        w1 = d
    else:
        w1 = w
    w0 = logq - w1

    if debug:
        print(w0, w1)


    c0 = wlm_iter(c, w0, q)
    c1 = wlm_iter(c0, w1, q)

    t = ((c * pow(2, -(w0+w1), q) ) % q)
    assert (c1 == t) or ((c1 - q) == t)
    if correct:
        return t
    else:
        return c1