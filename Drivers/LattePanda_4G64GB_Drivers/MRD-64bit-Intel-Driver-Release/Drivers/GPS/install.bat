@echo off
REM * Copyright 2012, 2013 Broadcom Corporation -- http://www.broadcom.com
REM * This program is the proprietary software of Broadcom Corporation and/or
REM * its licensors, and may only be used, duplicated, modified or distributed
REM * pursuant to the terms and conditions of a separate, written license
REM * agreement executed between you and Broadcom (an "Authorized License").
REM * Except as set forth in an Authorized License, Broadcom grants no license
REM * (express or implied), right to use, or waiver of any kind with respect to
REM * the Software, and Broadcom expressly reserves all rights in and to the
REM * Software and all intellectual property rights therein. IF YOU HAVE NO
REM * AUTHORIZED LICENSE, THEN YOU HAVE NO RIGHT TO USE THIS SOFTWARE IN ANY
REM * WAY, AND SHOULD IMMEDIATELY NOTIFY BROADCOM AND DISCONTINUE ALL USE OF
REM * THE SOFTWARE.
setlocal

call "%~dp0uninstall.bat"

"%~dp0Tools\devcon.exe" rescan > nul || (
    goto MUST_BE_ADMIN
)
if "%ConnectivityBus%"=="CP21x" goto INSTALL_CP210X

echo.
echo -----------------------Installing ACPI Serial Bus Driver------------------------
:INSTALL_ACPI_WITH_REVISION
echo.
echo Updating "ACPI\VEN_%ProviderID%&DEV_%CoreId%&REV_%RevId%"
"%~dp0Tools\devcon.exe" update "%~dp0BcmGnssBus.inf" "ACPI\VEN_%ProviderID%&DEV_%CoreId%&REV_%RevId%" || (
    goto INSTALL_ACPI_NO_REVISION
)
goto UPDATE_LOCSENSOR_WITH_REVISION

:INSTALL_ACPI_NO_REVISION
REM On some newer firmware, it will be BCM4751 for naming compliance
echo.
echo Updating "ACPI\VEN_%ProviderID%&DEV_%CoreId%"
"%~dp0Tools\devcon.exe" update "%~dp0BcmGnssBus.inf" "ACPI\VEN_%ProviderID%&DEV_%CoreId%" || (
        goto MUST_HAVE_ONE_ACPI_ID
    )
)
goto UPDATE_LOCSENSOR_WITH_REVISION


:INSTALL_CP210X
echo.
echo --------------------Configuring CP210x USB UART Driver---------------------
cls
type "%~dp0..\Docs\cp210x.txt"
@echo  
pause
goto INSTALL_LOCSENSOR_FOR_CP21X

:UPDATE_LOCSENSOR_WITH_REVISION
echo.
echo ----------------------Updating Location Sensor Driver----------------------
"%~dp0Tools\devcon.exe" rescan > nul

REM Will succeed if it can be installed as child of BcmGnssBus
echo Updating "Sensors\BcmGNSSLocationSensor_%ProviderID%_%CoreId%_%RevId%" for ACPI child
"%~dp0Tools\devcon.exe" update "%~dp0BcmGnssLocationSensor.inf" "Sensors\BcmGNSSLocationSensor_%ProviderID%_%CoreId%_%RevId%" || (
    echo.
    echo Updating sensor driver failed. Trying without using %RevId%
    goto UPDATE_LOCSENSOR_NO_REVISION
)
goto CONFIGURE_GNSS_ENGINE

:UPDATE_LOCSENSOR_NO_REVISION
REM Will succeed if it can be installed as child of BcmGnssBus
echo Updating "Sensors\BcmGNSSLocationSensor_%ProviderID%_%CoreId%" for ACPI child
"%~dp0Tools\devcon.exe" update "%~dp0BcmGnssLocationSensor.inf" "Sensors\BcmGNSSLocationSensor_%ProviderID%_%CoreId%" || (
    echo.
    echo Updating sensor driver failed.
    echo Ensure the computer is boot with "Disable Driver Signature Enforcement"
    goto FINISH
)

goto CONFIGURE_GNSS_ENGINE

:INSTALL_LOCSENSOR_FOR_CP21X
echo.
echo ---------------------Installing Location Sensor Driver---------------------
REM Update failed, try install instead
echo Installing "Sensors\BcmGNSSLocationSensor_%ProviderID%_%CoreId%_%RevId%_%ConnectivityBus%" for %ConnectivityBus% child
"%~dp0Tools\devcon.exe" install "%~dp0BcmGnssLocationSensor.inf" "Sensors\BcmGNSSLocationSensor_%ProviderID%_%CoreId%_%RevId%_%ConnectivityBus%" || (
    echo.
    echo Installing sensor driver for %ConnectivityBus% failed.
    echo Ensure the computer is boot with "Disable Driver Signature Enforcement"
)

:CONFIGURE_GNSS_ENGINE
goto FINISH

:MUST_BE_ADMIN
echo Must run as Administrator
echo Ensure the computer is boot with "Disable Driver Signature Enforcement"
goto FINISH

:MUST_HAVE_ONE_ACPI_ID
echo -----------------------------------ERROR-----------------------------------
type "%~dp0..\Docs\acpi.txt"
echo -----------------------------------ERROR-----------------------------------

:FINISH
echo ---------------------Broadcom Location Driver Installed--------------------
pause
endlocal
