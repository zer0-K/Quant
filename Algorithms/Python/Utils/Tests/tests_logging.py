import os
import re

def get_new_result_file_name(cwd: str, filename: str, filename_extension: str = ""):
    return get_new_log_file_name_custom(cwd, "results", filename, filename_extension, ".reslog")


def get_new_plotlog_file_name(cwd: str, filename: str, filename_extension: str = ""):
    return get_new_log_file_name_custom(cwd, "plotlogs", filename, filename_extension, ".plotlog")


def get_new_log_file_name_custom(cwd: str, logtype: str, filename: str, 
                             filename_extension: str = "", file_format: str = ".txt"):
    logdir = os.path.join(cwd, logtype)

    if filename != None and filename_extension != "" :
        filename += "_" + filename_extension
    
    return get_new_log_file_name(logdir, filename, file_format)    


def get_new_log_file_name(logdir: str, filename: str, file_format: str = ".txt"):

    if not os.path.isdir(logdir):
        os.mkdir(logdir)

    # find all files with same name format and capture last number ('file_12.txt' for ex)
    files = ";".join(os.listdir(logdir))
    logs_for_same_algo = re.findall(filename + r"_(\d+)" + file_format, files)

    filename += "_" + str(len(logs_for_same_algo)) + file_format
    filename_with_path = os.path.join(logdir, filename)

    return filename_with_path