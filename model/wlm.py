def wlm_iter(c, w, q, debug=False):
    T1 = c
    T1H = T1 >> w
    T1L = T1 & ((1<<w)-1)
    if debug:
        print("T1H: ", hex(T1H))
        print("T1L: ", hex(T1L))
    T2 = ((1<<w)-1) - T1L + 1
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