import sys

import os
from elftools.elf.elffile import ELFFile
from capstone import *

def file_format_check(filename):
    # TODO: 
    return True

class loadELF:

    def __init__(self, file_path):
        self.filepath = file_path
        assert file_format_check(file_path), f"File format error. {binfiel} is not an OBJ file."
    
        self.binfile = open(file_path, 'rb')
        assert self.binfile, f"Failed to open the file {file_path}"
    
        self.elf_obj = ELFFile(self.binfile)
        assert self.elf_obj, f"Failed to parse the ELF file {file_path}"

    def print(self):
        print(self.elf_obj.header)
        print(self.elf_obj.num_segments())
        print(self.elf_obj.num_sections())

        # print program header entry
        for segment in self.elf_obj.iter_segments():
            print(segment.header)

        # print section header entry
        for section in self.elf_obj.iter_sections():
            print('name', section.name)
            print('header', section.header)

            # if section.name == '.text':
                # binfile.seek(section.header['sh_addr'])
                # sh_size = section.header['sh_size']

    def close(self):
        self.binfile.close()
        


                


    

