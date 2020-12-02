HotKeySet("{ESCAPE}", "Terminate")
#include <MsgBoxConstants.au3>
#include <Array.au3>
Opt("WinTitleMatchMode", 3)
Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)
#comments-start
WinActive("Grand Theft Auto V", "")
WinWaitActive("Grand Theft Auto V", "", 2)
#comments-end




Sleep(1000)
While(1)
   WinSetState ( "Grand Theft Auto V", "", @SW_MINIMIZE )
   Sleep(100)
   WinSetState ( "Grand Theft Auto V", "", @SW_RESTORE )
   Sleep(100)
   MouseClick("right",600,600,1,1)
   Sleep(100)
   MouseClick("right",600,600,1,1)
   Sleep(100)
   MouseClick("right",600,600,1,1)
   Sleep(100)
   WinSetState ( "Grand Theft Auto V", "", @SW_MINIMIZE )
   MouseMove(600,600)
   Sleep(100000)
WEnd
