@echo off
title ZoomNoTimeout (Alexander Little)
echo "ALT+1 must be set as the keyboard shortcut in Zoom:" 
echo "Settings -> Keyboard shortcuts -> Mute/unmute my audio also tick Enable Global Shortcut"
set /a x=0
:loop
echo Unmuting Zoom... %x%
echo WScript.CreateObject("WScript.Shell").SendKeys("%%1") > %temp%\AltPlus1.vbs && cscript //nologo %temp%\AltPlus1.vbs && del %temp%\AltPlus1.vbs

rem Wait for ~x-1 seconds (can be changed)
ping -n 1 127.0.0.1 > nul

echo Muting Zoom... %x%
echo WScript.CreateObject("WScript.Shell").SendKeys("%%1") > %temp%\AltPlus1.vbs && cscript //nologo %temp%\AltPlus1.vbs && del %temp%\AltPlus1.vbs

rem Wait for 1 second
ping -n 2 127.0.0.1 > nul

rem Wait for x seconds before looping (can be changed)
timeout /t 30 > nul
set /a x+=1
goto loop
