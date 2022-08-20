# BinExp Tools

Set of tools for exploit development (binary exploitation) on GNU/Linux.

## disassemble\_section

With this tool we can extract the disassembled code of a function without
using `gdb`, where we would typically do:

```bash
user$ gdb -q binary
(gdb) set disassembly-flavor intel
(gdb) info functions
... main is among them ...
(gdb) disassemble main
... main disassembled ...
(gdb) 
```

To disassemble a function with `disassemble_section`:
```bash
user$ disassemble_section.sh binary
... main disassembled ...
user$ disassemble_section.sh binary fun1
... fun1 disassembled (it should exist) ...
user$ 
```

**Note**: `objdump` should be installed.
