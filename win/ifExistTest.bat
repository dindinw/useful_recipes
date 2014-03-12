@echo off
set dir="."
call:ifDir %dir% ifDirExist
echo %ifDirExist%
if "%ifDirExist%" NEQ "true" (
    echo NOT EXIST
    echo %dir% is not a directory
) else (
    echo GOOD
    echo %dir% is a directory
)
goto:eof

:ifDir
echo calling ifDir
echo input 1 is %~1
echo input 2 is %~2
for %%i IN (%~1) do if exist %%~si\NUL set "%~2=true"
exit /b