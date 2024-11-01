import argparse
import random
from ntt_friendly_prime_gen import ntt_friendly_prime_gen
from wlm import wlm_iter


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


def generate_test_vectors(args):
    random.seed(args.seed)

    primes = ntt_friendly_prime_gen(args.logq, args.logqh, None)

    fc  = open(args.test_dir + args.fn_c, "w")
    fqh = open(args.test_dir + args.fn_qh, "w")
    ft  = open(args.test_dir + args.fn_t, "w")

    for i in range(args.test_num):
        c  = random.randint(0, 2**(2*args.logq))
        qi = random.randint(0, len(primes)-1   )
    
        if args.test_sel == (-1) or i == args.test_sel:
            q  = primes[qi]
            qh = q >> (args.logq - args.logqh)
            t  = wlm_mixed(c, q, args.logq, args.logqh, args.dsp_a, args.dsp_b, args.correct)

            fc .write(f"{c :0{(args.logq*2) // 4}x}\n")
            fqh.write(f"{qh:0{ args.logqh   // 4}x}\n")
            ft .write(f"{t :0{ args.logq    // 4}x}\n")

    fc .close()
    fqh.close()
    ft .close()


if __name__ == "__main__":

    # Initialize parser
    parser = argparse.ArgumentParser(description="Simulation parameters.")

    # Add arguments with default values
    parser.add_argument("--logq", type=int, default=60, help="Set logq parameter (default: 60)")
    parser.add_argument("--logqh", type=int, choices=[17, 26], default=17,
                        help="Set logqh parameter (options: 17, 26; default: 17)")
    parser.add_argument("--correct", type=int, choices=[0, 1], default=1, help="Enable correct (1) or disable (0)")
    parser.add_argument("--ff_in", type=int, choices=[0, 1], default=1, help="Set ff_in (0 or 1)")
    parser.add_argument("--ff_sub", type=int, choices=[0, 1], default=1, help="Set ff_sub (0 or 1)")
    parser.add_argument("--ff_mul", type=int, choices=[0, 1], default=1, help="Set ff_mul (0 or 1)")
    parser.add_argument("--ff_sum", type=int, choices=[0, 1], default=1, help="Set ff_sum (0 or 1)")
    parser.add_argument("--ff_out", type=int, choices=[0, 1], default=1, help="Set ff_out (0 or 1)")
    parser.add_argument("--hp", type=int, default=5, help="Set hp parameter (default: 5)")
    parser.add_argument("--fn_c", type=str, default="C.txt", help="Set file name for c, reducton input (default: C.txt)")
    parser.add_argument("--fn_qh", type=str, default="qH.txt", help="Set file name for qh, highbits of the modulus (default: qH.txt)")
    parser.add_argument("--fn_t", type=str, default="T.txt", help="Set file name for t, the reduction output (default: T.txt)")
    parser.add_argument("--test_num", type=int, default=1000, help="Specify the test number (default: 1000)")
    parser.add_argument("--test_sel", type=int, default=-1, help="Specify a specific test number (default: -1, select all)")
    parser.add_argument("--seed", type=int, default=0, help="Set the random seed (default: 0)")
    parser.add_argument("--dsp_a", type=int, default=26, help="Set DSP A size (default: 26)")
    parser.add_argument("--dsp_b", type=int, default=17, help="Set DSP A size (default: 17)")
    parser.add_argument("--test_dir", type=str, default="vivado/modmul_lib.sim/sim_wr_mixed/behav/xsim/", help="Set the test directory (default: test)")


    # Parse arguments
    args = parser.parse_args()

    # Access arguments
    print("logq:", args.logq)
    print("logqh:", args.logqh)
    print("correct:", args.correct)
    print("ff_in:", args.ff_in)
    print("ff_sub:", args.ff_sub)
    print("ff_mul:", args.ff_mul)
    print("ff_sum:", args.ff_sum)
    print("ff_out:", args.ff_out)
    print("hp:", args.hp)
    print("fn_c:", args.fn_c)
    print("fn_qh:", args.fn_qh)
    print("fn_t:", args.fn_t)
    print("test_num:", args.test_num)
    print("seed:", args.seed)
    print("dsp_a:", args.dsp_a)
    print("dsp_b:", args.dsp_b)

    generate_test_vectors(args)