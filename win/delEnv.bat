@rem http://stackoverflow.com/questions/1472722/how-to-remove-system-environment-variable-by-using-batch-file
@rem setx can't delete!, you can only set it to empty
@rem setx JAVA_HOME ""
@rem need to use req to delete a key 

set key=%1
set uvar=HKCU\Environment

@rem get a Environment
reg query %uvar% /v %key%

@rem delete a user env
reg delete %uvar% /v %key% /f

@rem get all user env
reg query %uvar%
