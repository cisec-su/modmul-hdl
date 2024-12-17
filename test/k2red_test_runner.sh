vivado=$1
project=$(pwd)/vivado/modmul_lib.xpr

python test/k2red_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 17
python test/k2red_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 32 --LOGQH 16
python test/k2red_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 32 --LOGQH 15
