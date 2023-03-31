@echo off
del *.obj
del *.exe
nasm -f win64 -o hello_world.obj hello_world.asm
link hello_world.obj kernel32.lib msvcrt.lib legacy_stdio_definitions.lib ucrt.lib /subsystem:console /entry:main /out:hello_world.exe 