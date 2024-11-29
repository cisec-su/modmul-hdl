import abc
from .tester import Tester
import argparse
import random


class TestRunner(abc.ABC):

    def __init__(self):
        self.parser = argparse.ArgumentParser(description="Simulation parameters.")

        self.parser.add_argument("--hp", type=int, default=5, help="Set hp parameter (default: 5)")
        self.parser.add_argument("--test_num", type=int, default=1000, help="Specify the test number (default: 1000)")
        self.parser.add_argument("--test_sel", type=int, default=-1, help="Specify a specific test number (default: -1, select all)")
        self.parser.add_argument("--seed", type=int, default=0, help="Set the random seed (default: 0)")        
        self.parser.add_argument("--test_dir", type=str, default="vivado/modmul_lib.sim/sim_wr_mixed/behav/xsim/", help="Set the test directory (default: test)")
        self.parser.add_argument("--vivado_path", type=str, default=None, help="Set the Vivado executable path (default: vivado)")
        self.parser.add_argument("--working_dir", type=str, default=None, help="Set the working directory for tester (default: .tester)")

        project = self.project()
        if project is None:
            self.parser.add_argument("--project", type=str, required=True, help="Set the test directory (default: test)")
        
        simulation_set = self.simulation_set()
        if simulation_set is None:
            self.parser.add_argument("--simulation_set", type=str, default="sim_1", help=f"Set the simulation set (default: {self.simulation_set()})")
        
        top_level = self.top_level()
        if top_level is None:
            self.parser.add_argument("--top_level", type=str, required=True, help="Set the top-level module")

        self.param_keys = []
        self.subclass_add_args()
        self.args = self.parser.parse_args()

        print()
        print("********************************TestRunner.Args********************************")
        for (k, v) in vars(self.args).items():
            print(f"{k}: {v}")
        if project is not None:
            print(f"project: {project}")
        if top_level is not None:
            print(f"top_level: {top_level}")
        if simulation_set is not None:
            print(f"simulation_set: {simulation_set}")
        print("********************************TestRunner.Args********************************")
        print()

        tester_args = {}
        # required args
        tester_args["project"] = project if project is not None else self.args.project
        tester_args["top_level"] = top_level if top_level is not None else self.args.top_level
        # optional args
        if simulation_set is not None:
            tester_args["simulation_set"] = simulation_set
        elif self.args.simulation_set is not None:
            tester_args["simulation_set"] = self.args.simulation_set
        if self.args.vivado_path is not None:
            tester_args["vivado_path"] = self.args.vivado_path
        if self.args.working_dir is not None:
            tester_args["working_dir"] = self.args.working_dir

        self.tester = Tester(**tester_args)

    def subclass_add_args(self):
        pass

    def project(self):
        return None

    def top_level(self):
        return None

    def simulation_set(self):
        return None

    @abc.abstractmethod
    def gen_test_vec_init(self):
        pass

    @abc.abstractmethod
    def gen_test_vec_update(self):
        pass

    @abc.abstractmethod
    def gen_test_vec_finish(self):
        pass

    def generate_test_vectors(self):
        random.seed(self.args.seed)
        self.gen_test_vec_init()
        for i in range(self.args.test_num):
            self.gen_test_vec_update((i == self.args.test_sel) or (self.args.test_sel == -1))
        self.gen_test_vec_finish()

    def parser_add_tb_param(self, name, **kwargs):
        self.parser.add_argument(f"--{name}", **kwargs)
        self.param_keys.append(name)

    def run(self):
        self.generate_test_vectors()
        params = {}
        for key in self.param_keys:
            params[key] = getattr(self.args, key)
        print()
        print("********************************TestRunner.Params********************************")
        print(f"Running simulation with parameters: {params}")
        print("********************************TestRunner.Params********************************")
        print()
        self.tester.run_simulation(params)