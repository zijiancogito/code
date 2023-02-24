import sys
sys.path.append('../src/tools/lir')
import os
from lir import *
from capstone import *
from capstone.arm64 import *

CODE = b"\xe1\x0b\x40\xb9\x20\x04\x81\xda\x20\x08\x02\x8b"
def test_instruction():
    inst = Instruction("mov", "eax", ["ebx"])

    print(inst)

def test_basic_block():
    bb = BasicBlock()
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    md.detail = True
    for insn in md.disasm(CODE, 0x1000):
        bb.add_instruction(insn)


if __name__ == '__main__':
    test_instruction()

    test_basic_block()
