@rem Unfortunately, win7 have only 2 additional Clocks (3- Clocks displayed), answered by microsoft offically.
set clock="HKEY_CURRENT_USER\Control Panel\TimeDate\AdditionalClocks"

reg query %clock%
reg query %clock%\1
reg query %clock%\2

@rem add NY
reg delete %clock%\NY /f
reg add %clock%\NY /v Enable /t REG_DWORD /d 0x1
reg add %clock%\NY /v DisplayName /t REG_SZ /d NY
reg add %clock%\NY /v TzRegKeyName /t REG_SZ /d "Eastern Standard Time" 
@rem add CA
reg delete %clock%\CA /f
reg add %clock%\CA /v Enable /t REG_DWORD /d 0x1
reg add %clock%\CA /v DisplayName /t REG_SZ /d CA
reg add %clock%\CA /v TzRegKeyName /t REG_SZ /d "Pacific Standard Time" 
@rem add TX
reg delete %clock%\TX /f
reg add %clock%\TX /v Enable /t REG_DWORD /d 0x1
reg add %clock%\TX /v DisplayName /t REG_SZ /d TX 
reg add %clock%\TX /v TzRegKeyName /t REG_SZ /d "Central Standard Time"

reg query %clock%\NY
reg query %clock%\CA
reg query %clock%\TX

@rem 1 -> NY, 2-> CA
reg copy %clock%\NY %clock%\1 /s /f
reg copy %clock%\CA %clock%\2 /s /f

@rem 1 -> TX, 2->NY
@rem reg copy %clock%\TX %clock%\1 /s /f
@rem reg copy %clock%\NY %clock%\2 /s /f


@rem reg copy /?
@rem reg save /?
@rem reg query %clock%\3 
@rem set clock3="%clock:~1,-1%\3"
@rem echo %clock3%
@rem reg query %clock3%