@echo off

set currentpath=%cd%
cd %~dp0
echo Installing All Drivers 

cd..
echo %cd%
cd Installer\PlatformInstaller\Drivers

echo **************
echo Install MBI driver
set foldername=MBI
set infname=MBI.inf
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
echo Install PMIC driver
set foldername=PMIC
set infname=pmic.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install ISH driver
set foldername=ISH\HECI_ISH
set infname=ISH.inf
cd %foldername% 
pnputil -i -a ISH.inf
cd ..\Bus
pnputil -i -a ISH_BusDriver.inf
cd ..\Miniport
pnputil -i -a HID_PCI.inf
cd ..\HidEventFilter
pnputil -i -a HIDEventFilter.inf
cd ..\AdvSensorHIDClassDriver
pnputil -i -a AdvSensorClassDriver.inf
cd ..\AdvSensorHIDClassDriverV2
pnputil -i -a AdvSensorHIDClassDriverV2.inf
cd ..
cd ..

echo **************
echo Install BM driver
set foldername=BM
set infname=IntelBatteryManagement.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install DPTF driver
set foldername=DPTF
set infname=esif_manager.inf
cd %foldername% 
pnputil -i -a esif_manager.inf
pnputil -i -a dptf_acpi.inf
pnputil -i -a dptf_cpu.inf
pnputil -i -a dptf_pch.inf
cd ..

echo **************
echo Install TXEI driver
set foldername=TXEI
set infname=TXEI.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install Audio driver
set foldername=Audio\AudioRealtek\isstrtc
set infname=isstrtc.inf
cd %foldername% 
pnputil -i -a %infname%
CD..\rtii2sac
pnputil -i -a rtii2sac.inf
cd ..
cd ..
cd ..

echo **************
echo Install PSS driver
set foldername=PSS
set infname=MonzaX.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..

echo **************
echo Install Camera driver
set foldername=Camera\iacamera32
set infname=iacamera32.inf
cd %foldername% 
pnputil -i -a %infname%
cd ..\iaisp32
pnputil -i -a iaisp32.inf
rem cd ..\ov2680
rem pnputil -i -a ov2680.inf
rem cd ..\ov8858
rem pnputil -i -a ov8858.inf
cd ..
cd ..

echo **************
echo Install CWS driver
set foldername=CWS\WIFI\Realtek
set infname=netrtwlans.inf
cd %foldername% 
pnputil -i -a netrtwlans.inf
cd ..
cd ..\BT\Realtek
pnputil -i -a rtkuart.inf
cd ..
cd ..\NFC\Intel\x86
pnputil -i -a Intelnfc.inf
cd ..
cd ..
cd ..
cd ..

echo **************
echo Install GNSS driver
set foldername=gnss
set infname=gnssDriver.inf
cd %foldername% 
rem pnputil -i -a %infname%
cd ..

echo **************
echo Install Touch driver
set foldername=Touch
cd %foldername%
del C:\ProgramData\Goodix\baseData.bin
del C:\ProgramData\Goodix\freqData.bin
copy  TouchSetting.gt c:\windows\inf && devcon.exe update "package\GoodixTouchDriver.inf" "ACPI\GDIX1001" && devcon.exe rescan
cd ..

echo **************
echo Install graphic driver .... 
echo 
set foldername=Graphics
set infname=igdlh.inf
cd %foldername% 
pnputil -i -a %infname%

cd ..\..

echo All drivers are installed !
