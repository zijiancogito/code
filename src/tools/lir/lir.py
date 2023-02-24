import sys

import os
from capstone import *
from capstone.arm64 import *

class Mem:
    def __init__(self, base, index, disp):
        self.key = f"{base}_{index}_disp"
        self.base = base
        self.index = index
        self.disp = disp

    def __str__(self):
        s = f"{self.base} + {self.index} + {self.disp}"
        return s

class Shift:
    def __init__(self, type, value):
        self.type = type
        self.value = value

    def __str__(self):
        s = f"{self.type}_{self.value}"
        return s

class Operand:
    def __init__(self, cs_op):
        if cs_op.type == ARM64_OP_REG:
            self.key = cs_insn.reg_name

class Instruction:
    def __init__(self, mne, source, dests, cond=None):
        self.mnemonic = mne
        self.source_operands = source
        self.operands = dests
        self.cond = cond

    def __str__(self):
        inst = f"{self.source_operands} = {self.mnemonic} "
        for operands in self.operands[:-1]:
            inst = inst + f"{operands}, "
        inst = inst + self.operands[-1]
        return inst

class BasicBlock:
    def __init__(self):
        self.index = None
        self.operands_index = {}

    def add_instruction(self, cs_insn):
        address = cs_insn.address
        mnemonic = cs_insn.mnemonic
        operands = cs_insn.operands
        ops = []
        if len(operands) > 0:
            if op.type == 
        if len(operands) > 0:
            for op in operands:
                if op.type == ARM64_OP_REG:
                    ops.append(cs_insn.reg_name(op.value.reg))
                if op.type == ARM64_OP_IMM:
                    ops.append(op.value.imm)
                if op.type == ARM64_OP_CIMM:
                    ops.append(op.value.imm)
                if op.type == ARM64_OP_FP:
                    ops.append(op.value.fp)
                if op.type == ARM64_OP_MEM:
                    base, index, disp, cond = None, None, None, None
                    if op.value.mem.base != 0:
                        base = cs_insn.reg_name(op.value.mem.base)
                    if op.value.mem.index != 0:
                        index = cs_insn.reg_name(op.value.mem.index)
                    if op.value.mem.disp != 0:
                        disp = op.value.mem.disp
                    ops.append(Mem(base, index, disp))
                if op.shift.type != ARM64_SFT_INVALID and op.shift.value:
                    ops.append(Shift(op.shift.type, op.shift.value))
                if op.ext != ARM64_EXT_INVALID:
                    ops.append(op.ext)

        for op in ops:
            print(op)
        
        new_ops = []
        



class LIR:
    def __init__(self):
        return

