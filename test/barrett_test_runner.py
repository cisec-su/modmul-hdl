import automation.test_runner
import random
import math

from model.ntt_friendly_prime_gen import ntt_friendly_prime_gen
from model.barrett import barrett, precomp


class BarrettTestRunner(automation.test_runner.TestRunner):

    def __init__(self):
        super().__init__()

    def subclass_add_args(self):
        self.parser_add_tb_param("LOGQ", type=int, default=64, help="Set LOGQ parameter (default: 64)")
        self.parser_add_tb_param("LOGQH", type=int, default=32, help="Set LOGQH parameter (default: 32)")
        self.parser.add_argument("--B", type=int, default=64, help="Set B parameter (default: 64)")
        self.parser_add_tb_param("CORRECT", type=int, choices=[0, 1], default=1, help="Enable CORRECT (1) or disable (0)")
        self.parser_add_tb_param("PIPE_Q", type=int, choices=[0, 1], default=1, help="Set FF_IN (0 or 1)")
        self.parser_add_tb_param("FF_IN", type=int, choices=[0, 1], default=1, help="Set FF_IN (0 or 1)")
        self.parser_add_tb_param("FF_SHF", type=int, choices=[0, 1], default=1, help="Set FF_SHF (0 or 1)")
        self.parser_add_tb_param("FF_MUL", type=int, choices=[0, 1], default=1, help="Set FF_MUL (0 or 1)")
        self.parser_add_tb_param("FF_NEG", type=int, choices=[0, 1], default=0, help="Set FF_NEG (0 or 1)")
        self.parser_add_tb_param("USE_CSA", type=int, choices=[0, 1], default=1, help="Set USE_CSA (0 or 1)")
        self.parser_add_tb_param("FF_CSA", type=int, choices=[0, 1], default=1, help="Set FF_CSA (0 or 1)")
        self.parser_add_tb_param("FF_CORR", type=int, choices=[0, 1], default=0, help="Set FF_CORR (0 or 1)")
        self.parser_add_tb_param("FF_OUT", type=int, choices=[0, 1], default=1, help="Set FF_OUT (0 or 1)")
        self.parser_add_tb_param("FN_C", type=str, default='"C.txt"', help="Set file name for c, reducton input (default: C.txt)")
        self.parser_add_tb_param("FN_qH", type=str, default='"qH.txt"', help="Set file name for qh, highbits of the modulus (default: qH.txt)")
        self.parser_add_tb_param("FN_T", type=str, default='"T.txt"', help="Set file name for t, the reduction output (default: T.txt)")
        self.parser_add_tb_param("FN_MU", type=str, default='"MU.txt"', help="Set file name for t, the reduction output (default: T.txt)")
        self.parser_add_tb_param("FN_B", type=str, default='"B.txt"', help="Set file name for t, the reduction output (default: T.txt)")

    def top_level(self):
        return "barrett_tb"

    def simulation_set(self):
        return "sim_barrett"

    def gen_test_vec_init(self):
    
        if self.args.B > self.args.LOGQ:
            raise ValueError("B should be less than or equal to LOGQ")

        if self.args.LOGQ < self.args.LOGQH:
            raise ValueError("LOGQ should be greater than or equal to LOGQH")

        W = self.args.LOGQ - self.args.LOGQH

        if self.args.B <= W:
            raise ValueError("B should be greater than W")

        BH = self.args.B - W
        if self.args.PIPE_Q == 1:
            self.primes = ntt_friendly_prime_gen(self.args.B, BH, num_primes=min(1000, self.args.test_num), random=random)
        else:
            self.primes = ntt_friendly_prime_gen(self.args.B, BH, num_primes=1, random=random)
        self.fc = open(self.test_dir() + self.args.FN_C.replace('"',''), "w")
        self.fqh = open(self.test_dir() + self.args.FN_qH.replace('"',''), "w")
        self.ft = open(self.test_dir() + self.args.FN_T.replace('"',''), "w")
        self.fmu = open(self.test_dir() + self.args.FN_MU.replace('"',''), "w")
        self.fB = open(self.test_dir() + self.args.FN_B.replace('"',''), "w")

    def gen_test_vec_update(self, we):
        qi = random.randint(0, len(self.primes)-1   )
        q = self.primes[qi]
        c  = random.randint(0, q**2)
        if we:
            mu = precomp(self.args.B, q)
            t = barrett(c, self.args.B, mu, q, debug=self.args.debug, correct=self.args.CORRECT)
            qh = q >> (self.args.LOGQ - self.args.LOGQH)
            self.fc .write(f"{c :0{(self.args.LOGQ*2) // 4}x}\n")
            self.fqh.write(f"{qh:0{ self.args.LOGQH   // 4}x}\n")
            self.ft .write(f"{t :0{ self.args.LOGQ    // 4}x}\n")
            self.fmu.write(f"{mu:0{ (self.args.LOGQ + 1)    // 4}x}\n")
            logB = math.ceil(math.log2(self.args.LOGQ))
            self.fB.write(f"{self.args.B:0{ logB    // 4}x}\n")

    def gen_test_vec_finish(self):
        self.fc .close()
        self.fqh.close()
        self.ft .close()
        self.fmu.close()
        self.fB.close()


if __name__ == "__main__":

    test_runner = BarrettTestRunner()
    test_runner.run()