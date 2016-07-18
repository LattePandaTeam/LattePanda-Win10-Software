@echo off

set currentpath=%cd%
echo installing all CherryTrail MRD driver

echo %cd%
cd ..\Drivers

echo **************
echo Install MBI driver
set foldername=MBI
set infname=MBI.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install TXEI driver
set foldername=TXEI
set infname=TXEI.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..


echo **************
echo Install PMIC driver
set foldername=PMIC
set infname=pmic.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install BM driver
set foldername=BM
set infname=IntelBatteryManagement.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo ****************
echo Install IO driver
set foldername=I2C
set infname=iai2ce.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install GPIO driver
set foldername=GPIO
set infname=iagpioe.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install UART driver
set foldername=UART
set infname=iauarte.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install SPI driver
set foldername=SPI
set infname=iaspie.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..



echo **************
echo Install DPTF driver
set foldername=DPTF
set infname=DPTF_acpi.inf
cd %foldername% 
pnputil -i -a DPTF_acpi.inf
pnputil -i -a DPTF_cpu.inf
pnputil -i -a DPTF_pch.inf
pnputil -i -a ESIF_MANAGER.inf
cd ..


echo **************
echo Install Audio driver
set foldername=audio
set infname=isstrtc.inf
cd %foldername% 
pnputil -i -a isstrtc.inf
pnputil -i -a rtii2sac.inf
cd ..

echo **************
echo Install ISH driver
set foldername=ISH\HidEventFilter
set infname=HIDEventFilter.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..\..

echo **************
echo Install Touch driver
set foldername=touch
set infname=GoodixTouchDriver.inf
cd %foldername% 
del C:\ProgramData\Goodix\baseData.bin
del C:\ProgramData\Goodix\freqData.bin
del c:\windows\inf\gt9*.bin
rem copy .\GT*.bin c:\windows\inf\
copy TouchSetting.gt c:\windows\inf && devcon.exe rescan && devcon.exe update "package\GoodixTouchDriver.inf" "ACPI\GDIX1001" && devcon.exe rescan
cd ..

echo Install Camera driver
set foldername=camera
set infname=iacamera64.inf
cd %foldername% 
pnputil -i -a iaisp64.inf
pnputil -i -a iacamera64.inf
REM pnputil -i -a ov2680.inf
REM pnputil -i -a ov5648.inf
cd ..

echo **************
echo Install WiFi driver
set foldername=WIFI
set infname=netrtwlans.inf
cd %foldername% 
copy bcm943341wlagb.txt c:\windows\system32\drivers
pnputil -i -a bcmdhd64.inf
pnputil -i -a bcmfn2.inf
cd ..

echo **************
echo Install Bluetooth driver
set foldername=BT
set infname=BtwSerialBus.inf
cd %foldername% 
install /i /q
cd ..

echo **************
echo Install Sensor driver
set foldername=sensors
set infname=BMG160Gyroscope.inf
cd %foldername% 
rem pnputil -i -a SpbLTR.inf
rem kxaccel-1.0.29.4-x64-hlk-autosfx.exe
rem devcon update BMG160Gyroscope.inf ACPI\BSBG0160
cd ..

echo **************
echo Install GPS driver
set foldername=GPS
set infname=BcmGnssBus.inf
cd %foldername% 
rem pnputil -i -a BcmGnssBus.inf
rem pnputil -i -a BcmGnssLocationSensor.inf
cd ..


echo **************
echo Install graphic driver .... 
echo 
set foldername=Graphics
set infname=igdlh64.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo All Intel drivers for CherryTrail MRD are installed !





