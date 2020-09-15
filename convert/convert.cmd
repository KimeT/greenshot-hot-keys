:: Convert to exe without compression
Ahk2Exe.exe /in "..\Greenshot HotKeys.ahk" /out "no-compression\GreenshotHotKeys.exe" /icon "..\images\greenshot-autohotkey-logo.ico" /compress 0

:: Convert to exe with MPRESS compression
Ahk2Exe.exe /in "..\Greenshot HotKeys.ahk" /out "mpress\GreenshotHotKeys.exe" /icon "..\images\greenshot-autohotkey-logo.ico" /compress 1

:: Convert to exe with UPX compression
Ahk2Exe.exe /in "..\Greenshot HotKeys.ahk" /out "upx\GreenshotHotKeys.exe" /icon "..\images\greenshot-autohotkey-logo.ico" /compress 2
