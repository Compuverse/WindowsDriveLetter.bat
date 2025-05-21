::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: This batch file executes a registry command 
:: to create a persistent drive letter association
:: pointing to a local/network Windows folder across reboots.
:: The drive will behave as a normal logical or physical drive
:: while also being available to command prompts with raised privileges.
:: 
:: The REG ADD command below uses 2 variables:
::     "C:\Users\Compuverse\Programming" will be mapped to drive "X:\"
:: Before executing this batch file, modify those variables in the REG ADD command:
::      Change X: to your desired drive letter
:: AND
::      Change C:\Users\Compuverse\Programming to the desired path.
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: For details and more information see:
:: The Registry resource section of our Windows Development Workona Space
:: AND
:: The Windows Drive Substitution Methodologies section:
:: https://workona.com/0/e2k336?lid=17705bf6-e84f-4ac7-a3c2-266f687cffc7&ws=OSs-Windows%20(Development)
:: 
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices" /v X: /t REG_SZ /d "\??\C:\Users\Compuverse\Programming" /f
