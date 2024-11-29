from .wlm import wlm_iter

def wlm_mixed(c, q, logq, logqh, dsp_a, dsp_b, correct=True):

    w = logq - logqh
    if (logqh <= dsp_b):
        d = dsp_a
    else:
        d = dsp_a
    if (w > d):
        w1 = d
    else:
        w1 = w
    w0 = logq - w1 + 2

    t = ((c * pow(2, -(w0+w1), q) ) % q)
    if correct:
        return t
    else:
        c0 = wlm_iter(c, w0, q)
        c1 = wlm_iter(c0, w1, q)
        assert (c1 % q) == t
        return c1