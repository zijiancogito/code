import sys
sys.path.append('../src/tools/bin/')

from load_bin import *
from disasm import *

ELF_PATH = './case/case1003/o0/main_o0-aarch64.o'

def test_load_elf():
    obj = loadELF(ELF_PATH)
    obj.print()

def test_disasm():
    output = './asm.gtirb'
    result = ddisasm(ELF_PATH, output)
    print(result)

    assert result, "Failed to disassemble."

    myir = MyIR(output)

if __name__ == "__main__":
    test_load_elf()
    test_disasm()
