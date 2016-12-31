
@ECHO OFF
for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
if %%l equ 2 (
color 4f
dir %%i
echo searching and deleting those files please wait...
	goto usb
	)
		)
echo ~~~~~Sorry,I coudnot find Any USB Drive attached~~~~~
timeout 5
echo . &echo.
echo going to all drive mode
echo . &echo.
goto other_drive
:usb
echo.

for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
if %%l equ 2 (
echo.

del /S %%i*porn*.*
del /S %%i*fuck*.*
del /S %%i*tits*.*
del /S %%i"*cock*".*
del /S %%i"*pussey*".*
del /S %%i"*dick*".*
del /S %%i"*cunt*".*
del /S %%i"*blowjob*".*
del /S %%i"*clit*".*
del /S %%i"*pounding*".*
del /S %%i"*anal *".*
del /S %%i"*horny*".*
del /S %%i"*vagina*".*
del /S %%i"*ass *".*
del /S %%i"*milf *".*
del /S %%i"*interracial*".*
del /S %%i"*masturbation*".*
del /S %%i"*lesbian*".*
del /S %%i"*gangbang*".*
del /S %%i"*femdom*".*
del /S %%i"*threesome*".*
del /S %%i"*spanking*".*
del /S %%i"*facesitting*".*
del /S %%i"*sex *".*
del /S %%i"*boob*".*
del /S %%i"*booty*".*




prn_deleter.bat > deleted_files_usb.txt 2>&1




	)
	)
	goto other_drive

	:other_drive
	color 47
set /p other_drive=Please Enter the drive letter :
if "%other_drive%"=="c" goto :eof

echo.
dir %other_drive%: /w/a

del /S %other_drive:~0,1%:*porn*.*
del /S %other_drive:~0,1%:*fuck*.*
del /S %other_drive:~0,1%:*tits *.*
del /S %other_drive:~0,1%:"*cock *".*
del /S %other_drive:~0,1%:"*pussey*".*
del /S %other_drive:~0,1%:"*dick*".*
del /S %other_drive:~0,1%:"*cunt*".*
del /S %other_drive:~0,1%:"*blowjob*".*
del /S %other_drive:~0,1%:"*clit *".*
del /S %other_drive:~0,1%:"*pounding*".*
del /S %other_drive:~0,1%:"*anal *".*
del /S %other_drive:~0,1%:"*horny*".*
del /S %other_drive:~0,1%:"*vagina*".*
del /S %other_drive:~0,1%:"*ass *".*
del /S %other_drive:~0,1%:"*milf*".*
del /S %other_drive:~0,1%:"*interracial*".*
del /S %other_drive:~0,1%:"*hairy *".*
del /S %other_drive:~0,1%:"*masturbation*".*
del /S %other_drive:~0,1%:"*lesbian*".*
del /S %other_drive:~0,1%:"*gangbang*".*
del /S %other_drive:~0,1%:"*femdom*".*
del /S %other_drive:~0,1%:"*threesome*".*
del /S %other_drive:~0,1%:"*spanking*".*
del /S %other_drive:~0,1%:"*facesitting*".*
del /S %other_drive:~0,1%:"*boob *".*
del /S %other_drive:~0,1%:"*booty *".*
del /S %other_drive:~0,1%:"*sex *".*



timeout 5