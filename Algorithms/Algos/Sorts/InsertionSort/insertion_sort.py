import os
import sys
import pandas

##### global variables

QUANT_PATH = os.environ["QUANT_PATH"]
curr_algo_dir = os.path.join(QUANT_PATH, "Algorithms", "Algos", "Sorts", "InsertionSort")
base_filename_for_logs = "insertion_sort_py"
file_name = ""


##### project imports

sys.path.append(QUANT_PATH)

from Algorithms.Utils.Tests.generic_test_run import run_generic_test
from Algorithms.Utils.Lists.list_utils import is_sorted
from Algorithms.Utils.Tests.cli_args import do_we_log_result, do_we_log_steps


def run_insertion_sort_inplace(input_: list, res: dict = {"res":{}}):
    
    for j in range(1, len(input_)):
        element = input_[j]

        # insert element in first part of the list, already sorted
        i = j-1
        while i>=0 and input_[i]>element:
            input_[i+1] = input_[i]
            i -= 1
        input_[i+1] = element
    
    res["res"]["output"] = input_

    return res            


def run_insertion_sort_inplace_steps(input_: list, res: dict = {"res":{}, "res_steps":{}}):

    steps = []
    for j in range(1, len(input_)):
        element = input_[j]
        
        step = {
            "input": input_.tolist(),
            "steps": []
        }

        # insert element in first part of the list, already sorted
        i = j-1
        while i>=0 and input_[i]>element:
            input_[i+1] = input_[i]
            i -= 1

            step["steps"].append(input_.tolist())

        input_[i+1] = element

        step["steps"].append(input_.tolist())
        step["output"] = input_.tolist()
        steps.append(step)

    res["res"]["output"] = input_
    res["res_steps"]["steps"] = steps
    res["res_steps"]["output"] = input_.tolist()
    
    return res


def run_insertion_sort_all():

    funcs_to_run = [
        run_insertion_sort_inplace,
        run_insertion_sort_inplace_steps
    ]
    for test_func in funcs_to_run:

        res = run_generic_test(test_func, curr_algo_dir, base_filename_for_logs)

        passed = True
        if "all_res" in res.keys():
            for result in res["all_res"]:
                passed &= is_sorted(l=result["res"]["output"])

    if not passed:
        print("Test failed : " + base_filename_for_logs)
    else:
        print("Test passed : " + base_filename_for_logs)
 

if __name__ == "__main__":

    print("Current working directory : " + curr_algo_dir)

    if do_we_log_result(sys.argv):
        run_generic_test(run_insertion_sort_inplace, curr_algo_dir, base_filename_for_logs)
        
    if do_we_log_steps(sys.argv):
        run_generic_test(run_insertion_sort_inplace_steps, curr_algo_dir, base_filename_for_logs)         
