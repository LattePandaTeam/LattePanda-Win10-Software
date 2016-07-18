echo off
echo Start install GoodixTouchDriver...

cd /d %~dp0

if exist .\package\TouchSetting.gt (goto set_err)
if not exist TouchSetting.gt (goto no_set_file)

echo copy TouchSetting.gt to c:\windows\inf

copy TouchSetting.gt c:\windows\inf && devcon.exe rescan && devcon.exe update "package\GoodixTouchDriver.inf" "ACPI\GDIX1001" && devcon.exe rescan && goto install_ok

echo GoodixTouchDriver installation failed !
goto exit

:install_ok
echo GoodixTouchDriver installed successfully
goto :exit

:no_set_file
echo Error: TouchSetting.gt is not found
echo GoodixTouchDriver installation failed !
goto exit

:set_err
echo Error: Find TouchSetting.gt in package
echo GoodixTouchDriver installation failed !

:exit
pause