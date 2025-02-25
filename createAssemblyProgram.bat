@echo off
echo Assembly Project Creator (Use NASM)
echo DO NOT PUT SPACE
echo The file will be created in the directory of this file
echo Name :
set /p userInput=
md %userInput%
cd %userInput%
echo nasm -f elf64 main.asm > compile.bat
echo ld -s -o main main.o >> compile.bat
echo ; New Assembly File > main.asm
echo Success
pause
