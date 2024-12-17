vivado=$1
project=$(pwd)/vivado/modmul_lib.xpr

python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 1 --USE_L3 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --CORRECT 1 --USE_L3 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 1
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --CORRECT 1
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 0 --USE_L3 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --CORRECT 0 --USE_L3 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 32 --LOGQH 15 --CORRECT 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 0 --FF_SUB 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 0 --FF_SUB 0 --FF_SHF 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 0 --FF_SHF 0
python test/montgomery_shift_test_runner.py --vivado $vivado --project $project --test_num 1000 --LOGQ 64 --LOGQH 32 --CORRECT 1 --FF_SUM 0
