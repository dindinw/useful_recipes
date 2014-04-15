cd "%USERPROFILE%\Downloads\"
::7z
::7z x -otest test.rar *.pdf -r -y 1>NUL

SETLOCAL ENABLEDELAYEDEXPANSION
@FOR /f "tokens=*" %%a in ('dir /b %USERPROFILE%\Downloads\_Un\*.rar') do (
set FolderDate=%%~Na
::THEN, ALL YOU HAVE TO DO IS TAKE A SECTION OF THE FILENAME FROM 2, TO THE END OF THE NAME.
set Folderdate=!%FolderDate:~2%!
)
::now you can use the REN command to rename them with this new environment variable
::ren "(drive&path)\commsettle*.*" "(drive&path)\!folderdate!_commsettle.*" 