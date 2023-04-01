@echo off
del *.obj
del *.exe
del *.lst
del *.pdb

nasm -f win64 -l hello_world.lst -gcv8 -o hello_world.obj hello_world.asm

REM Release:
REM nasm -f win64 -l hello_world.lst -o hello_world.obj hello_world.asm 

link hello_world.obj /defaultlib:ucrt.lib /defaultlib:msvcrt.lib /defaultlib:legacy_stdio_definitions.lib /defaultlib:Kernel32.lib /defaultlib:Shell32.lib /nologo /incremental:no /subsystem:console /entry:main /opt:noref /debug /pdb:"hello_world.pdb" /out:hello_world.exe 

REM Release:
REM link hello_world.obj /defaultlib:ucrt.lib /defaultlib:msvcrt.lib /defaultlib:legacy_stdio_definitions.lib /defaultlib:Kernel32.lib /defaultlib:Shell32.lib /nologo /incremental:no /subsystem:console /entry:main /opt:ref /out:hello_world.exe 