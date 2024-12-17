vivado=$1
project=$(pwd)/vivado/modmul_lib.xpr

python test/barrett_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 32 --PIPE_Q 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 63 --B 32 --PIPE_Q 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 48 --B 32 --PIPE_Q 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 48 --B 32 --PIPE_Q 1
python test/barrett_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 32 --PIPE_Q 1
python test/barrett_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 64 --PIPE_Q 0
python test/barrett_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 12 --PIPE_Q 0
python test/barrett_test_runner.py --test_num 100000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --CORRECT 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 1 --CORRECT 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_SHF 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_SHF 0 --CORRECT 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_SHF 0 --FF_NEG 1
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_SHF 0 --USE_CSA 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_SHF 0 --FF_CSA 0
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_SHF 1 --FF_NEG 1
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 0 --FF_NEG 1 --FF_CORR 1
python test/barrett_test_runner.py --test_num 1000 --vivado $vivado --project $project --LOGQ 64 --LOGQH 64 --B 24 --PIPE_Q 1 --FF_NEG 1 --FF_CORR 1
