import os
import sys
import pandas

QUANT_PATH = os.environ["QUANT_PATH"]
curr_algo_dir = os.path.join(QUANT_PATH, "Algorithms", "Algos", "Sorts", "InsertionSort")

sys.path.append(QUANT_PATH)

from Algorithms.Utils.Tests.input_enumerate import get_test_input_generator_int

def run():
    for inputs in get_test_input_generator_int(curr_algo_dir):
        print(inputs)

if __name__ == "__main__":
    print("Current working directory : " + curr_algo_dir)
    run()
