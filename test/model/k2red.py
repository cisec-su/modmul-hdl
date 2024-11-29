def k2red(c, q, logq, logqh, correct=True, debug=True):

    qh = q >> (logq - logqh)
    m = logq - logqh
    mask = ((1 << m) - 1)
    mask_ = ((1 << (logq*2)) - 1)

    cl = c & mask
    ch = c >> m
    t0 = cl*qh - ch

    t0l = t0 & mask
    t0h = t0 >> m
    t1 = t0l*qh - t0h

    t = ((c * pow(2, -(2*m), q) ) % q)

    if debug:
        print("c = 0x%x" % c)
        print("q = 0x%x" % q)
        print("logq = %d" % logq)
        print("logqh = %d" % logqh)
        print("qh = 0x%x" % qh)
        print("m = %d" % m)
        print("mask = 0x%x" % mask)
        print("cl = 0x%x" % cl)
        print("ch = 0x%x" % ch)
        print(f"t0 = {hex(t0)}     {hex((t0 & mask_))}")
        print(f"t0l = {hex(t0l)}     {hex((t0l & mask_))}")
        print(f"t0h = {hex(t0h)}     {hex((t0h & mask_))}")
        print(f"t1 = {hex(t1)}     {hex((t1 & mask_))}")
        print(f"comp1: {t0l*qh > t0h}")
        print("t = 0x%x" % t)
        print(f"t1 - q = 0x{hex(t1 - q)}")
        print(f"t1 + q = 0x{hex(t1 + q)}")


    assert (t1 == t) or ((t1 - q) == t) or ((t1 + q) == t)
    if correct:
        return t
    else:
        return t1