import os
import sys
import time

verbose = os.environ["QUANT_VERBOSE"]
sys.path.append(os.environ["QUANT_PATH"])

from Algorithms.Python.Utils.Tests.input_enumerate import get_test_input_generator
from Algorithms.Python.Utils.Tests.cli_args import do_we_log_result, do_we_log_steps, get_log_file_name_extension
from Algorithms.Python.Utils.Logging.logger import logger_res, logger_steps


def run_generic_test_single(test_func, input_):

    logger_res.update_file()
    logger_steps.update_file()

    res = {
        "res": { 
            "input": input_.tolist()
        }
    }
    if logger_steps.enabled:
        res["res_steps"] = {"input": input_.tolist()}

    start_time = time.time()
    all_res = test_func(input_, res)
    elapsed_time_micros = round((time.time() - start_time) * 1000000)

    # convert result from numpy array to list for json serialisation
    all_res["res"]["output"] = all_res["res"]["output"].tolist()

    if "res" in all_res.keys():
        all_res["res"]["elapsed_time_micros"] = elapsed_time_micros
        logger_res.log_result(all_res["res"])

    if "res_steps" in all_res.keys():
        all_res["res_steps"]["elapsed_time_micros"] = elapsed_time_micros
        logger_steps.log_result(all_res["res_steps"])
    
    if verbose:
        print("Elapsed time : " + str(elapsed_time_micros) + "µs")
    
    return all_res

 

def run_generic_test(test_func, algo_dir: str, algo_base_file_name: str):

    if do_we_log_result(sys.argv):
        logger_res.enable_and_init(algo_dir, algo_base_file_name, "results")
        
    if do_we_log_steps(sys.argv):
        logger_steps.enable_and_init(algo_dir, algo_base_file_name, "plotlogs")
    
    all_res = {"all_res":[]} 
    for input_ in get_test_input_generator(algo_dir):

        if verbose:
            print("Before sort : " + str(input_))

        res = run_generic_test_single(test_func, input_)
        all_res["all_res"].append(res)

        if verbose and "res" in res.keys():
            print("After sort : " + str(res["res"]))
    
    return all_res
 
def print_test_passed(is_passed: bool):

    if not passed:
        print("Test failed : " + base_filename_for_logs)
    else:
        print("Test passed : " + base_filename_for_logs)

