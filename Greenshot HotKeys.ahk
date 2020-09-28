#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon  ; Hide tray icon (includes converted EXE)
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force
#WinActivateForce
Menu, Tray, Tip, Greenshot Auto crop: Ctrl+Shift+A`nToggle tray icon: Ctrl+Alt+T

; DetectHiddenWindows, On
; if WinExist("ahk_exe Greenshot.exe")
; 	if WinActive("ahk_exe Greenshot.exe")
; 		MsgBox, , Info, Greenshot is running, 3
; 	else
; 		MsgBox, , Info, Greenshot is running but not active, 3
; else
; 	MsgBox, , Info, Greenshot is not running, 3
; DetectHiddenWindows, Off


^+a::
if WinExist("ahk_exe Greenshot.exe")
{
	;MsgBox, , Info, Greenshot is running, 3
	if WinActive("ahk_exe Greenshot.exe")
	{
		;MsgBox, , Info, Greenshot is running & active, 3
		KeyWait Control
		KeyWait Shift
		SendInput !ea
		SendInput {Enter}
	}
	else
	{
		;MsgBox, , Info, Greenshot is running but not active, 3
	}
}
else
{
	;MsgBox, , Info, Greenshot is not running, 3
}
If A_IconHidden
{
	Menu, Tray, Icon
	Sleep 10000
	Menu, Tray, NoIcon
}
return

^!t::
If A_IconHidden
	Menu, Tray, Icon
else
	Menu, Tray, NoIcon
return