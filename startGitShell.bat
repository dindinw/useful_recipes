@echo off

set COMMAND=C:\Windows\SysWOW64\cmd.exe
set GIT_SHELL="C:\Program Files (x86)\Git\bin\sh.exe"

start %COMMAND% /c "%GIT_SHELL% --login -i"
