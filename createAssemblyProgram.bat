@echo off

:: Titre de l'application
echo Assembly Project Creator (Use NASM)

:: Demande le nom du projet à l'utilisateur
echo Name :
set /p userInput=

:: Crée un répertoire avec le nom du projet
md %userInput%

:: Change de répertoire vers le répertoire du projet
cd %userInput%

:: Crée le fichier compile.bat avec les commandes nécessaires pour assembler et lier le fichier assembleur
echo nasm -f elf64 main.asm > compile.bat
echo ld -s -o main main.o >> compile.bat

:: Crée un fichier assembleur de base
echo ; New Assembly File > main.asm

:: Message de succès
echo Success

:: Pause pour permettre à l'utilisateur de voir le message final avant que la fenêtre ne se ferme
pause