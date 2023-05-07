ZoomNoTimeout Program
This program is a batch script designed to prevent Zoom from timing out due to inactivity. It works by muting and unmuting your audio every pause seconds, preventing Zoom from detecting inactivity and closing your call.

Installation
Download the ZoomNoTimeout.bat file from this repository.
Save it to your preferred directory.
Usage
Double-click the ZoomNoTimeout.bat file to run the script.
Set ALT+1 as the keyboard shortcut in Zoom by going to Settings -> Keyboard shortcuts -> Mute/unmute my audio, and ticking Enable Global Shortcut.

Configuration
The following parameters can be configured by editing the script:

pause: the number of seconds to wait between each cycle of muting and unmuting the audio (default is 30).
pauseInBetween: the number of seconds to wait between muting and unmuting the audio (default is 1).
