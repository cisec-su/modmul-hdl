import subprocess
import os
import shutil  # To remove directories with contents

class Tester:
    def __init__(self, project, top_level, simulation_set="sim_1", vivado_path="vivado", working_dir=".test"):
        self.simulation_set = simulation_set
        self.top_level = top_level  # Original testbench module
        self.project = project  # Path to the Vivado project file (.xpr)
        self.vivado_path = vivado_path  # Path to the Vivado executable
        self.working_dir = working_dir  # Directory for TCL and wrapper files

        # Define paths based on working_dir
        self.tcl_script = os.path.join(self.working_dir, "run_sim.tcl")
        self.wrapper_name = f"{self.top_level}_wrapper"  # Wrapper module with "_wrapper" suffix
        self.wrapper_path = os.path.join(self.working_dir, f"{self.wrapper_name}.sv")

    def create_wrapper_module(self, params):
        """Generates the Verilog wrapper module that instantiates the top-level testbench with overridden parameters."""
        
        # Ensure the working directory exists
        if not os.path.exists(self.working_dir):
            os.makedirs(self.working_dir)
        
        with open(self.wrapper_path, "w") as f:
            # Define the wrapper module
            f.write(f"module {self.wrapper_name}();\n\n")
            
            # Instantiate the original top-level testbench with parameter overrides
            f.write(f"    {self.top_level} #(\n")
            param_lines = [f'        .{param}({value})' for param, value in params.items()]
            f.write(",\n".join(param_lines))
            f.write(f"\n    ) {self.top_level}_inst ();\n\n")
            
            # End module definition
            f.write("endmodule\n")

        print(f"Wrapper module {self.wrapper_name}.sv created with parameters: {params}")
        return self.wrapper_path

    def create_tcl_script(self, params):
        """Generates the TCL script to open a project, activate a simulation set, set the top-level for simulation, and run the simulation."""
        
        # Ensure the directory for the TCL script exists
        if not os.path.exists(self.working_dir):
            os.makedirs(self.working_dir)

        with open(self.tcl_script, "w") as f:
            # Open the specified project
            f.write(f'open_project {self.project}\n')

            # Add the wrapper module to the project with the absolute path
            f.write(f'add_files "{os.path.abspath(self.wrapper_path)}"\n')

            # Set the wrapper as the top-level only for this simulation
            f.write(f'set_property top {self.wrapper_name} [get_filesets {self.simulation_set}]\n')

            f.write('set_property -name {xsim.simulate.runtime} -value {20ns} -objects ' + f'[get_filesets {self.simulation_set}]\n')

            # Launch simulation with the specified top-level wrapper
            f.write(f'\nlaunch_simulation -simset [get_filesets {self.simulation_set}]\n')
            f.write('\nrun all\n')

            # After simulation, reset top-level and remove wrapper
            f.write(f'\nset_property top {self.top_level} [get_filesets {self.simulation_set}]\n')
            f.write(f'remove_files "{os.path.abspath(self.wrapper_path)}"\n')

            # Optionally close the project after simulation
            f.write('\nclose_sim; close_project\n')

    def run_simulation(self, params):
        """Creates the wrapper Verilog module and TCL script with specified parameters, then runs the simulation, and cleans up files."""
        
        # Create the wrapper Verilog module for the specified parameters
        self.create_wrapper_module(params)

        # Create the TCL script for the simulation
        self.create_tcl_script(params)
        print(f"TCL script {self.tcl_script} created for simulation set '{self.simulation_set}' with parameters: {params}")

        # Run the TCL script with the specified Vivado executable
        try:
            process = subprocess.Popen(
                [self.vivado_path, "-mode", "batch", "-source", self.tcl_script],
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True
            )

            # Read and print the output line by line as it is generated
            for line in process.stdout:
                print(line, end="")

            # Wait for the process to complete and capture any remaining error output
            _, stderr = process.communicate()
            if stderr:
                print("\nSimulation Error Output:")
                print(stderr)

        except FileNotFoundError:
            print("Error: Vivado executable not found at the specified path.")
        except Exception as e:
            print(f"An error occurred: {e}")
        finally:
            # Clean up the TCL script and wrapper files, then remove the working directory
            if os.path.exists(self.tcl_script):
                os.remove(self.tcl_script)
                print(f"Deleted TCL script: {self.tcl_script}")
            if os.path.exists(self.wrapper_path):
                os.remove(self.wrapper_path)
                print(f"Deleted wrapper module: {self.wrapper_path}")
            if os.path.exists(self.working_dir):
                shutil.rmtree(self.working_dir)
                print(f"Deleted working directory: {self.working_dir}")