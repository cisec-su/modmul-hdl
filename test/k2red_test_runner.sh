vivado=/home/toluntosun/Xilinx/Vivado/2023.1/bin/vivado
project=/home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.xpr

python test/k2red_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 32
python test/k2red_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 32 --LOGQH 16
python test/k2red_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 32 --LOGQH 15
