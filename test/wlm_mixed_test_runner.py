import automation.test_runner
import argparse
import random

from model.ntt_friendly_prime_gen import ntt_friendly_prime_gen
from model.wlm_mixed import wlm_mixed


class WlmMixedTestRunner(automation.test_runner.TestRunner):

    def __init__(self):
        super().__init__()

    def subclass_add_args(self):
        self.parser_add_tb_param("LOGQ", type=int, default=60, help="Set LOGQ parameter (default: 60)")
        self.parser_add_tb_param("LOGQH", type=int, default=17,
                            help="Set LOGQH parameter (default: 17)")
        self.parser_add_tb_param("CORRECT", type=int, choices=[0, 1], default=1, help="Enable CORRECT (1) or disable (0)")
        self.parser_add_tb_param("FF_IN", type=int, choices=[0, 1], default=1, help="Set FF_IN (0 or 1)")
        self.parser_add_tb_param("FF_SUB", type=int, choices=[0, 1], default=1, help="Set FF_SUB (0 or 1)")
        self.parser_add_tb_param("FF_MUL", type=int, choices=[0, 1], default=1, help="Set FF_MUL (0 or 1)")
        self.parser_add_tb_param("FF_SUM", type=int, choices=[0, 1], default=1, help="Set FF_SUM (0 or 1)")
        self.parser_add_tb_param("FF_OUT", type=int, choices=[0, 1], default=1, help="Set FF_OUT (0 or 1)")
        self.parser_add_tb_param("FN_C", type=str, default='"C.txt"', help="Set file name for c, reducton input (default: C.txt)")
        self.parser_add_tb_param("FN_qH", type=str, default='"qH.txt"', help="Set file name for qh, highbits of the modulus (default: qH.txt)")
        self.parser_add_tb_param("FN_T", type=str, default='"T.txt"', help="Set file name for t, the reduction output (default: T.txt)")
        self.parser_add_tb_param("DSP_A", type=int, default=26, help="Set DSP A size (default: 26)")
        self.parser_add_tb_param("DSP_B", type=int, default=17, help="Set DSP A size (default: 17)")

    def top_level(self):
        return "wlm_mixed_tb"

    def simulation_set(self):
        return "sim_wr_mixed"

    def gen_test_vec_init(self):
        self.primes = ntt_friendly_prime_gen(self.args.LOGQ, self.args.LOGQH, None)
        self.fc  = open(self.args.test_dir + self.args.FN_C.replace('"',''), "w")
        self.fqh = open(self.args.test_dir + self.args.FN_qH.replace('"',''), "w")
        self.ft  = open(self.args.test_dir + self.args.FN_T.replace('"',''), "w")

    def gen_test_vec_update(self, we):
        c  = random.randint(0, 2**(2*self.args.LOGQ))
        qi = random.randint(0, len(self.primes)-1   )
        if we:
            q  = self.primes[qi]
            qh = q >> (self.args.LOGQ - self.args.LOGQH)
            t  = wlm_mixed(c, q, self.args.LOGQ, self.args.LOGQH, self.args.DSP_A, self.args.DSP_B, self.args.CORRECT)
            self.fc .write(f"{c :0{(self.args.LOGQ*2) // 4}x}\n")
            self.fqh.write(f"{qh:0{ self.args.LOGQH   // 4}x}\n")
            self.ft .write(f"{t :0{ self.args.LOGQ    // 4}x}\n")

    def gen_test_vec_finish(self):
        self.fc .close()
        self.fqh.close()
        self.ft .close()

    # def generate_test_vectors(self):
    #     random.seed(self.args.seed)

    #     primes = ntt_friendly_prime_gen(self.args.LOGQ, self.args.LOGQH, None)

    #     fc  = open(self.args.test_dir + self.args.FN_C.replace('"',''), "w")
    #     fqh = open(self.args.test_dir + self.args.FN_qH.replace('"',''), "w")
    #     ft  = open(self.args.test_dir + self.args.FN_T.replace('"',''), "w")
    #     for i in range(self.args.test_num):
    #         c  = random.randint(0, 2**(2*self.args.LOGQ))
    #         qi = random.randint(0, len(primes)-1   )
        
    #         if self.args.test_sel == (-1) or i == self.args.test_sel:
    #             q  = primes[qi]
    #             qh = q >> (self.args.LOGQ - self.args.LOGQH)
    #             t  = wlm_mixed(c, q, self.args.LOGQ, self.args.LOGQH, self.args.DSP_A, self.args.DSP_B, self.args.CORRECT)

    #             fc .write(f"{c :0{(self.args.LOGQ*2) // 4}x}\n")
    #             fqh.write(f"{qh:0{ self.args.LOGQH   // 4}x}\n")
    #             ft .write(f"{t :0{ self.args.LOGQ    // 4}x}\n")
    #     fc .close()
    #     fqh.close()
    #     ft .close()


if __name__ == "__main__":

    test_runner = WlmMixedTestRunner()
    test_runner.run()