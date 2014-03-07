@rem query by a req key 
@echo off
set key=%1
set uvar=HKCU\Environment
set mvar="HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
@rem get all user Environment
reg query %uvar% /v %key% 
@rem get from machine Environment
reg query %mvar%
