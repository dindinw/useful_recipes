@echo off


echo The batchfile's drive letter : %~d0   
echo The batchfile's path (without the drive letter) : %~p0   
echo The batchfile's path 1 : %~dp0   

echo The batchfile's path 2 : %cd% 

echo The batchfile's full name 1 : %~f0 
echo The batchfile's full name 2 : %0     

echo The batchfile's filename (without suffix) : %~n0   
echo The batchfile's suffix (without filename) : %~x0   
echo The batchfile's full name 3 : %~dpnx0

echo The batchfile's file attributes : %~a0  

echo The batchfile's date+time : %~t0   

echo The batchfile's filesize : %~z0   

echo The batchfile's parent folder : "%~dp0.."
echo The parent folder :
for %%i in (%~dp0..) do echo %%i %%~fi 
echo The current foler name : 
for %%* in (.) do echo %%* %%~n*
