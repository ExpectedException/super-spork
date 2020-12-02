HotKeySet("{ESCAPE}", "Terminate")
#include <MsgBoxConstants.au3>
#include <Array.au3>
Opt("WinTitleMatchMode", 3)
Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 1)
#comments-start
WinActive("Grand Theft Auto V", "")
WinWaitActive("Grand Theft Auto V", "", 2)
#comments-end




Sleep(1000)
While(1)

   WinSetState ( "Grand Theft Auto V", "", @SW_MINIMIZE )
   Sleep(100)
   WinSetState ( "Grand Theft Auto V", "", @SW_RESTORE )
   Sleep(1000)
   PixelSearch(867,878,841,846,0xFFFFFF)
   Sleep(100)
   MouseClick("left",1552,1052,1,0)
    Sleep(100)
	 MouseClick("left",1553,1053,1,0)
    Sleep(100)
   PixelSearch(946,959,943,952,0xFFFFFF)
Sleep(100)
   MouseClick("left",934,528,1,0)
    Sleep(100)
	MouseClick("left",933,529,1,0)
    Sleep(100)
   PixelSearch(1152,1171,488,493,0xFFFFFF)
	Sleep(100)
	While (Not PixelGetColor(1046,490) = 0xFFFFFF)
	   MouseClick("left",1656,682,15,0)
   WEnd
   Sleep(100)
   MouseClick("left",1546,975,1,0)
    Sleep(100)
    MouseClick("left",1547,976,1,0)
	 Sleep(100)
   WinSetState ( "Grand Theft Auto V", "", @SW_MINIMIZE)
   Sleep(30000)
   WinSetState ( "Grand Theft Auto V", "", @SW_RESTORE )
   Sleep(2000)
   PixelSearch(786,795,957,953,0x101315)
   Sleep(1000)
   MouseClick("left",1259,1160,2,2)
    Sleep(100)
WEnd

Func Terminate()
   Exit 0
EndFunc