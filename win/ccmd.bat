@rem "The cmd wrapper which with execute some prepare command in a tmp batch file before build a cmd window."
@rem "the temporary batch file will be removed after cmd window is closed."

@echo off
call :tmpcmd > "%~f0.bat"
start "" "%~f0.bat"
goto:eof

:tmpcmd
echo @echo off 
echo start /b "" cmd /c %~dp0startGitShell.bat
echo start /b "" cmd /c del "%~f0.bat" &rem need to del itself by another process
echo exit
goto:eof

