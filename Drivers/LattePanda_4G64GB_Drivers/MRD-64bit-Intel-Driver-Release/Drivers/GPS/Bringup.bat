@echo off
REM * Copyright 2012 Broadcom Corporation -- http://www.broadcom.com
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
mode con: cols=120 lines=40
echo ========= TraceView Configuration =========
echo Configure traceview per ..\Docs\traceview.txt
pause
echo ========= Friendly Reminder: Configure TraceView =========
echo Double Ensure TraceView is configured
echo 
pause
type "%~dp0..\Docs\bringup.txt"
pause
call "%~dp0\Tests\CollectAlmanac.bat" Bringup
pause
echo ========= Friendly Reminder: Save TraceView Contents =========
echo Double Ensure TraceView contents are saved!!!
echo 
pause