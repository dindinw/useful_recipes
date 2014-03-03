@rem http://stackoverflow.com/questions/1472722/how-to-remove-system-environment-variable-by-using-batch-file
@rem For Win7 the setx is shipped
@echo off
set key=%1
set value=%2
setx %key% %value%

set uvar=HKCU\Environment
@rem get all user Environment
reg query %uvar% /v %key% 
