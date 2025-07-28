@echo off
set "source_dir=D:\ANDROID\Projects\TUL\app\src\main"  REM Replace with your directory path
set "output_file=kt_batch123.txt"  REM Replace with desired output name

if not exist "%source_dir%" (
    echo Source directory does not exist!
    exit /b 1
)

echo. > "%output_file%"
for /r "%source_dir%" %%f in (*.kt) do (
    echo --- File: %%f --- >> "%output_file%"
    type "%%f" >> "%output_file%"
    echo. >> "%output_file%"
)

echo Done!
pause