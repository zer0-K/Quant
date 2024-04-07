from typing import Generator
import os
import re
from numpy import genfromtxt

verbose = bool(os.environ["QUANT_VERBOSE"])

def get_test_input_generator(cwd: str, input_format: int = 0) -> Generator[list, None, None]:

    files = ";".join(os.listdir(cwd))
    if input_format == 0 :
        # format 0 : csv containing a list of values

        input_files = re.findall(r"(input_[^_]+_\d+\.csv)", files)
        input_files.sort()

        for input_file in input_files:

            isint = True if "int" in input_file else False
            isfloat = True if "float" in input_file else False
            
            input_file = os.path.join(cwd, input_file)
            if verbose:
                print("Reading " + input_file)

            data = None
            if isint:
                data = genfromtxt(input_file, delimiter=',', dtype=(int))
            if isfloat:
                data = genfromtxt(input_file, delimiter=',', dtype=(float))

            yield data
