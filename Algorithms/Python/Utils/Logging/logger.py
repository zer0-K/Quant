import os
import sys
import json
import re

sys.path.append(os.environ["QUANT_PATH"])

from Algorithms.Python.Utils.Tests.tests_logging import get_new_result_file_name, get_new_plotlog_file_name


class logger:

    def __init__(self, enable=False):
        self.enabled = enable
        self.file_name = ""
        self.file_name_extension = ""
        self.verbose = bool(os.environ["QUANT_VERBOSE"])


    def enable(self):
        if self.verbose:
            print("Logger enabled")
        self.enabled = True


    def disable(self):
        if self.verbose:
            print("Logger disabled")
        self.enabled = False


    def set_base_folder(self, folder: str):
        if self.verbose:
            print("Logger base folder set at : " + folder)
        self.base_folder = folder


    def set_base_file_name(self, base_file_name: str):
        if self.verbose:
            print("Logger base file name set : " + base_file_name)
        self.base_file_name = base_file_name


    def set_file_name_extension(self, file_name_extension: str):
        if self.verbose:
            print("Logger file name extension set : " + file_name_extension)
        self.file_name_extension = file_name_extension


    def set_file_name(self, file_name: str):
        if self.verbose:
            print("Logger file set at : " + file_name)
        self.file_name = file_name


    def update_file_from_name(self, file_name: str):
        if self.enabled:
            if self.logger_type == "results":
                self.file_name = get_new_result_file_name(self.base_folder, 
                                        file_name, self.file_name_extension)
            elif self.logger_type == "plotlogs":
                self.file_name = get_new_plotlog_file_name(self.base_folder, 
                                        file_name, self.file_name_extension)
            else:
                self.file_name = os.path.join(self.base_folder, file_name)


    def update_file(self):
        if self.enabled:
            self.update_file_from_name(self.base_file_name)


    def set_logger_type(self, logger_type: str):
        if self.verbose:
            print("Logger type set : " + logger_type)
        self.logger_type = logger_type
    

    def log_result(self, res_dict: dict):
        if self.enabled:
            if self.file_name != None and self.file_name != "":
                with open(self.file_name, 'a') as f:
                    if self.verbose:
                        print("Writing result in log file : " + self.file_name)
                    content = json.dumps(res_dict, indent=2)
                    content = re.sub(r'(\d+,)\s+',r'\1 ', content)
                    f.write(content)
            else:
                print("Logger enabled but no log file defined")


    def enable_and_init(self, base_dir: str, base_file_name: str, logger_type: str):
        self.enable()
        self.set_base_folder(base_dir)
        self.set_base_file_name(base_file_name)
        self.set_logger_type(logger_type)


logger_res = logger()
logger_steps = logger()

