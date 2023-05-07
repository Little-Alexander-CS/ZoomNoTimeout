@echo off
title ZoomNoTimeout (Alexander Little)
echo "ALT+1 must be set as the keyboard shortcut in Zoom:" 
echo "Settings -> Keyboard shortcuts -> Mute/unmute my audio also tick Enable Global Shortcut"

set /a counter=0
set /a pause=30
set /a pauseInBetween=1

:loop
echo Unmuting Zoom... %counter%
echo WScript.CreateObject("WScript.Shell").SendKeys("%%1") > %temp%\AltPlus1.vbs && cscript //nologo %temp%\AltPlus1.vbs && del %temp%\AltPlus1.vbs

rem Wait for pauseInBetween-1 seconds (can be changed)
ping -n %pauseInBetween% 127.0.0.1 > nul

echo Muting Zoom... %counter%
echo WScript.CreateObject("WScript.Shell").SendKeys("%%1") > %temp%\AltPlus1.vbs && cscript //nologo %temp%\AltPlus1.vbs && del %temp%\AltPlus1.vbs

rem Wait for pause seconds before looping (can be changed)
timeout /t %pause% > nul
set /a counter+=1
goto loop
