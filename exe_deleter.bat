
@ECHO OFF
for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
if %%l equ 2 (
color 4f
echo disable autoplay of usb drive to be in safe side
echo Select an Option
echo.
echo 1 Skip deletion of exe files
echo.
echo 2 Rename all exe in root to exe_virus and delete_later, manually 
echo    not_recommended, if infected with exe virus use option 3
echo.
echo 3 Delete exe files,by Choosing which to delete
	goto  usb
	)
		)
echo ~~~~~Sorry,I coudnot find Any USB Drive attached~~~~~
timeout 3
goto end
:usb
echo.
echo Enter your choice :
set /p Choice=

if %Choice%==1 ( goto end)
if %Choice%==2 ( goto exe_vir)
if %Choice%==3 ( goto exe)
:exe
for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
if %%l equ 2 (
echo.
echo Please choose wisely,which exe file to delete 
echo.
del /P /S /F %%i*.exe
MSG * "You can open your USB drive now"
cls
	)
	)
	goto end
:exe_vir
color 3f
for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
if %%l equ 2 (
rename %%i*.exe *.exe_virus
MSG * "You can open your USB drive now,but make sure of .exe virus if_any"
cls
	)
	)
	:end
timeout 3