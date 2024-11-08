import automation.test_runner
import random

from model.prothl_prime_gen import prothl_prime_gen, to_q
from model.montgomery_shift import montgomery_shift


class MontgomeryShiftTestRunner(automation.test_runner.TestRunner):

    def __init__(self):
        super().__init__()

    def subclass_add_args(self):
        self.parser_add_tb_param("LOGQ", type=int, default=64, help="Set LOGQ parameter (default: 64)")
        self.parser_add_tb_param("LOGQH", type=int, default=32, help="Set LOGQH parameter (default: 32)")
        self.parser_add_tb_param("LOGL1", type=int, default=5, help="Set LOGL1 parameter (default: 5)")
        self.parser_add_tb_param("LOGL2", type=int, default=5, help="Set LOGL2 parameter (default: 5)")
        self.parser_add_tb_param("LOGL3", type=int, default=5, help="Set LOGL3 parameter (default: 5)")
        self.parser_add_tb_param("USE_L3", type=int, choices=[0, 1], default=1, help="Enable L3 (1) or disable (0)")
        self.parser_add_tb_param("CORRECT", type=int, choices=[0, 1], default=1, help="Enable CORRECT (1) or disable (0)")
        self.parser_add_tb_param("FF_IN", type=int, choices=[0, 1], default=1, help="Set FF_IN (0 or 1)")
        self.parser_add_tb_param("FF_SHF", type=int, choices=[0, 1], default=1, help="Set FF_SHF (0 or 1)")
        self.parser_add_tb_param("FF_SUB", type=int, choices=[0, 1], default=1, help="Set FF_SUB (0 or 1)")
        self.parser_add_tb_param("FF_SUM", type=int, choices=[0, 1], default=1, help="Set FF_SUM (0 or 1)")
        self.parser_add_tb_param("FF_OUT", type=int, choices=[0, 1], default=1, help="Set FF_OUT (0 or 1)")
        self.parser_add_tb_param("FN_C", type=str, default='"C.txt"', help="Set file name for c, reducton input (default: C.txt)")
        self.parser_add_tb_param("FN_qL", type=str, default='"qL.txt"', help="Set file name for l1, l2, l3, the non-zero indexes in high-bits of the modulus (default: qL.txt)")
        self.parser_add_tb_param("FN_T", type=str, default='"T.txt"', help="Set file name for t, the reduction output (default: T.txt)")

    def top_level(self):
        return "montgomery_shift_tb"

    def simulation_set(self):
        return "sim_montgomery_shift"

    def gen_test_vec_init(self):
        self.primes = prothl_prime_gen(self.args.LOGQ, self.args.LOGQH, use_l3=self.args.USE_L3)
        self.fc = open(self.test_dir() + self.args.FN_C.replace('"',''), "w")
        self.fql = open(self.test_dir() + self.args.FN_qL.replace('"',''), "w")
        self.ft = open(self.test_dir() + self.args.FN_T.replace('"',''), "w")

    def gen_test_vec_update(self, we):
        qi = random.randint(0, len(self.primes)-1   )
        l_arr  = self.primes[qi]
        l3 = 0 if not self.args.USE_L3 else l_arr[2]
        q = to_q(l_arr[0], l_arr[1], l3, self.args.LOGQ, self.args.LOGQH, self.args.USE_L3)
        c  = random.randint(0, q**2)
        if we:
            t = montgomery_shift(c, l_arr[0], l_arr[1], l3, self.args.LOGQ, self.args.LOGQH, use_l3=self.args.USE_L3, correct=self.args.CORRECT, debug=self.args.debug)
            self.fc .write(f"{c :0{(self.args.LOGQ*2) // 4}x}\n")
            self.fql.write(f"{l_arr[0]:0{ self.args.LOGL1   // 4}x}\n")
            self.fql.write(f"{l_arr[1]:0{ self.args.LOGL2   // 4}x}\n")
            if self.args.USE_L3:
                self.fql.write(f"{l_arr[2]:0{ self.args.LOGL3   // 4}x}\n")
            self.ft .write(f"{t :0{ self.args.LOGQ    // 4}x}\n")

    def gen_test_vec_finish(self):
        self.fc .close()
        self.fql.close()
        self.ft .close()


if __name__ == "__main__":

    test_runner = MontgomeryShiftTestRunner()
    test_runner.run()