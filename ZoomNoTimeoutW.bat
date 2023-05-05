@echo off
echo "SHIFT+1 must be set as the keyboard shortcut in Settings -> Keyboard shortcuts -> Mute/unmute my audio also tick Enable Global Shortcut"
:loop

echo Simulating SHIFT+1...
echo WScript.CreateObject("WScript.Shell").SendKeys("+1") > %temp%\ShiftPlus1.vbs && cscript //nologo %temp%\ShiftPlus1.vbs && del %temp%\ShiftPlus1.vbs

rem Wait for 1 second
ping -n 2 127.0.0.1 > nul

echo Simulating SHIFT+1 again...

rem Simulate Alt+A key combination again
echo WScript.CreateObject("WScript.Shell").SendKeys("+1") > %temp%\ShiftPlus1.vbs && cscript //nologo %temp%\ShiftPlus1.vbs && del %temp%\ShiftPlus1.vbs

rem Wait for 1 second
ping -n 2 127.0.0.1 > nul

rem Wait for 10 seconds before looping
timeout /t 10 > nul
goto loop
