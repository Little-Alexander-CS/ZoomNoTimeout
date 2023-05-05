@echo off
echo "SHIFT+1 must be set as the keyboard shortcut in Zoom: Settings -> Keyboard shortcuts -> Mute/unmute my audio also tick Enable Global Shortcut"

:loop
echo Unmuting Zoom...
echo WScript.CreateObject("WScript.Shell").SendKeys("+1") > %temp%\ShiftPlus1.vbs && cscript //nologo %temp%\ShiftPlus1.vbs && del %temp%\ShiftPlus1.vbs

rem Wait for 1 second
ping -n 1 127.0.0.1 > nul

echo Muting Zoom...
echo WScript.CreateObject("WScript.Shell").SendKeys("+1") > %temp%\ShiftPlus1.vbs && cscript //nologo %temp%\ShiftPlus1.vbs && del %temp%\ShiftPlus1.vbs

rem Wait for 1 second
ping -n 2 127.0.0.1 > nul

rem Wait for x seconds before looping (can be changed)
timeout /t 30 > nul
goto loop
