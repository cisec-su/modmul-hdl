vivado=/home/toluntosun/Xilinx/Vivado/2023.1/bin/vivado
project=$(pwd)/vivado/modmul_lib.xpr

python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 60 --LOGQH 17 --FF_SUB 0 --FF_SUM 0
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 18 --FF_SUB 0 --FF_SUM 0
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 19 --FF_SUB 0 --FF_SUM 0

python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15
python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 17
python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --FF_SUB 0
python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 17 --FF_SUB 0
python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --FF_SUM 0
python test/wlm_test_runner.py --MIXED 1 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 17 --FF_SUM 0

python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 47
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --FF_SUB 0
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 17 --FF_SUB 0
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --FF_SUM 0
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 17 --FF_SUM 0

python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 16
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 48
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 17
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 49
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 18
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 50
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 19
python test/wlm_test_runner.py --MIXED 0 --test_num 1000 --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 51
