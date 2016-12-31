
@ECHO OFF
taskkill /F /T /IM commgr.exe
taskkill /F /T /IM WinAlert.exe
taskkill /F /T /IM WinSysApp.exe
attrib +h +s  %TEMP%\*.bat
color 5f
mode con: cols=80 lines=30
echo killing tasks
taskkill  /F /T /IM REGSVR.EXE
taskkill /F /T /IM suchost..exe
cls
taskkill /F /T /IM svchost..exe
taskkill /F /T /IM "New Folder.exe"
taskkill /F /T /IM "mswin32.exe"
cls
taskkill /F /T /IM "SCVVHSOT.exe"
taskkill /F /T /IM "SCVHSOT.exe"
taskkill /F /T /IM "scvshosts.exe"
taskkill /F /T /IM "wscript.exe"
cls
taskkill /F /T /IM "hinhem.scr"
taskkill /F /T /IM "blastclnnn.exe"
echo.

:usb_main
for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
if %%l equ 2 (
echo %%i is a USB drive.
echo. -----------------Unhiding the Files----------------------------
attrib -h -r -s -a /s /d %%i*.*
echo.
cls
echo.
del  /F %%iautorun.exe
del  /F %%iRecycle*.exe
del  /F %%iporn*.exe
del  /F %%isystem*.exe
del /F %%iltrlrtnrut.vbs
del  /F %%info.exe
del /S %%iThumbs.db
cls
del /S %%idesktop.ini
del /F %%iBha.vbs
del  /F %%iravmon.exe
del  /F %%iRVHost.exe
del /F %%i*.lnk
cls
del /F %%iautorun.inf
del /F %%iiexplorer.vbs
del /F %%iregsvr.exe
del /F %%i*Folder.exe
del /F %%i"New Fol*.exe"
del /F %%imovi*.exe
cls
del /F %%i"recycler*.exe"
del /F %%i"system volum*.exe"
del /F %%irecycler.exe
del /F %%i"*.vbs"
del /F %%iwinseven.exe
cls
echo.
del /F %%i_*.init
del /F %%i_*.com
del /F %%i*.nil
echo.
echo removing directory recycler
rmdir /S /Q %%irecycler
cls
echo.
echo (A. Kr Singh)
echo.
cls

	)
	else
	echo no usb drive attached
	
	)




