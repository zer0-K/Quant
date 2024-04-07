
def test_cli_args_help():
    print("- to log result : '--log-result'")
    print("- to log all steps of an algorithm : '--log-steps'")
    print("- to customize the log file name : '--log-name-extension=my_extension'")


def do_we_log_result(sys_argv: list[str]):
    log_res = "--log-result"
    return log_res in sys_argv

def do_we_log_steps(sys_argv: list[str]):
    log_steps_arg = "--log-steps"
    return log_steps_arg in sys_argv

def get_log_file_name_extension(sys_argv: list[str]):
    extension_name = "--log-name-extension"
    extensions = [arg[len(extension_name):] for arg in sys_argv if  arg.startswith(extension_name)]

    if len(extensions) == 1:
        return extensions[0]
    return ""