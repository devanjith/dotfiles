#!/usr/bin/env python3

import os.path
from subprocess import PIPE
from ranger.api.commands import Command

class fzf(Command):
    """
    :fzf <file name>
    """
    def execute(self):
        self.fm.notify(self.quantifier)
        query = "\"" + " ".join(self.args[1:]) + "\""
        command = "fzf +m -q " + query
        fzf = self.fm.execute_command(command, stdout=PIPE)
        stdout, stderr = fzf.communicate()
        target = os.path.abspath(stdout.decode("utf-8").rstrip("\n"))
        
        if fzf.returncode == 0:
            if os.path.isdir(target):
                self.fm.cd(target)
            else:
                self.fm.select_file(target)
