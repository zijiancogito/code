import sys

import os
import gtirb
from capstone import *

def ddisasm(bin_path, save_to, threads=1):
    cmd = f"ddisasm {bin_path} --ir {save_to} -j {threads}"
    tmp = os.popen(cmd)
    return tmp



class MyIR(gtirb.ir.IR):
    def __init__(self, protobuf, arch=CS_ARCH_ARM64, mode=CS_MODE_ARM):
        self.md = Cs(arch, mode)
        self.ir = self.load_protobuf(protobuf)
        assert self.ir, f"Failed to load protobuf from {protobuf}."

        m = self.ir.modules[0]
        for b in m.code_blocks:
            code = b.contents
            for i in self.md.disasm(code, 0x0):
                print("0x%x:\t%s\t%s" %(i.address, i.mnemonic, i.op_str))

    def     
    
