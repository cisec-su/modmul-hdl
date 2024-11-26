import automation.test_runner
import random

from model.ntt_friendly_prime_gen import ntt_friendly_prime_gen
from model.k2red import k2red


class K2redTestRunner(automation.test_runner.TestRunner):

    def __init__(self):
        super().__init__()

    def subclass_add_args(self):
        self.parser_add_tb_param("LOGQ", type=int, default=60, help="Set LOGQ parameter (default: 60)")
        self.parser_add_tb_param("LOGQH", type=int, default=17, help="Set LOGQH parameter (default: 17)")
        self.parser_add_tb_param("CORRECT", type=int, choices=[0, 1], default=1, help="Enable CORRECT (1) or disable (0)")
        self.parser_add_tb_param("FF_IN", type=int, choices=[0, 1], default=1, help="Set FF_IN (0 or 1)")
        self.parser_add_tb_param("FF_MUL", type=int, choices=[0, 1], default=1, help="Set FF_MUL (0 or 1)")
        self.parser_add_tb_param("USE_CSA", type=int, choices=[0, 1], default=1, help="Set USE_CSA (0 or 1)")
        self.parser_add_tb_param("FF_CSA", type=int, choices=[0, 1], default=1, help="Set FF_CSA (0 or 1)")
        self.parser_add_tb_param("FF_CORR", type=int, choices=[0, 1], default=1, help="Set FF_CORR (0 or 1)")
        self.parser_add_tb_param("FF_OUT", type=int, choices=[0, 1], default=1, help="Set FF_OUT (0 or 1)")
        self.parser_add_tb_param("FN_C", type=str, default='"C.txt"', help="Set file name for c, reducton input (default: C.txt)")
        self.parser_add_tb_param("FN_qH", type=str, default='"qH.txt"', help="Set file name for qh, highbits of the modulus (default: qH.txt)")
        self.parser_add_tb_param("FN_T", type=str, default='"T.txt"', help="Set file name for t, the reduction output (default: T.txt)")

    def top_level(self):
        return "k2red_tb"

    def simulation_set(self):
        return "sim_k2red"

    def gen_test_vec_init(self):
        self.primes = ntt_friendly_prime_gen(self.args.LOGQ, self.args.LOGQH, self.args.test_num, random=random)
        self.fc  = open(self.test_dir() + self.args.FN_C.replace('"',''), "w")
        self.fqh = open(self.test_dir() + self.args.FN_qH.replace('"',''), "w")
        self.ft  = open(self.test_dir() + self.args.FN_T.replace('"',''), "w")

    def gen_test_vec_update(self, we):
        qi = random.randint(0, len(self.primes)-1   )
        q  = self.primes[qi]
        qh = q >> (self.args.LOGQ - self.args.LOGQH)
        c  = random.randint(0, q**2)
        if we:
            t = k2red(c, q, self.args.LOGQ, self.args.LOGQH, self.args.CORRECT, debug=self.args.debug)
            self.fc .write(f"{c :0{(self.args.LOGQ*2) // 4}x}\n")
            self.fqh.write(f"{qh:0{ self.args.LOGQH   // 4}x}\n")
            self.ft .write(f"{t :0{ self.args.LOGQ    // 4}x}\n")

    def gen_test_vec_finish(self):
        self.fc .close()
        self.fqh.close()
        self.ft .close()


if __name__ == "__main__":

    test_runner = K2redTestRunner()
    test_runner.run()