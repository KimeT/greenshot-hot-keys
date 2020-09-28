# Greenshot HotKeys

[Greenshot](https://getgreenshot.org) keyboard shortcuts (extends Greenshot menu items). Currently only **Auto crop** is extended.

Implemented with [AutoHotkey](https://www.autohotkey.com).

EXE conversions created without compression and with compression with [MPRESS](https://www.matcode.com/mpress.htm) and [UPX](https://upx.github.io) freeware as described in this [AutoHotkey documentation](https://www.autohotkey.com/docs/Scripts.htm#ahk2exe).


## Use

Run converted EXE either before every time you want to use it or add it to your Windows profile Startup folder to start it every time you log into Windows.

You can also run .ahk file for the same purpose but lose tray icon modifications, which EXE has. Requires AutoHotKey to be installed.


### Shortcuts

**Ctrl+Shift+A**: Auto crop image (and accept changes with {Enter})

**Ctrl+Alt+T**: Show / Hide tray icon for example to close script (hidden on start)


## Conversion

Requires [AutoHotkey](https://www.autohotkey.com) installation with wanted compression programs copied into AutoHotkey **Compiler** subfolder, see [compression documentation](https://www.autohotkey.com/docs/Scripts.htm#mpress). However, conversion without compression works without these.

Also, requires **Ahk2Exe.exe** folder to be in PATH environment varialble (default: *C:\Program Files\AutoHotkey\Compiler*).

Run [convert/convert.cmd](convert/convert.cmd), this converts **Greenshot HotKeys.ahk** to **GreenshotHotKeys.exe** with and without compression into corresponding subfolders:

- no-compression
- mpress
- upx
