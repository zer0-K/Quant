from typing import Generator
import os
import re
from numpy import genfromtxt

verbose = bool(os.environ["QUANT_VERBOSE"])

def get_test_input_generator_int(cwd: str, input_format: int = 0) -> Generator[list[int], None, None]:

    files = ";".join(os.listdir(cwd))
    if input_format == 0 :
        # format 0 : csv containing a list of values

        input_files = re.findall(r"(input\d+\.csv)", files)

        for input_file in input_files:

            input_file = os.path.join(cwd, input_file)
            if verbose:
                print("Reading " + input_file)

            data = genfromtxt(input_file, delimiter=',', dtype=(int))
            yield data