HotKeySet("{ESCAPE}", "Terminate")
#include <MsgBoxConstants.au3>
#include <Array.au3>
Opt("WinTitleMatchMode", 3)
Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)
WinActivate ("Minecraft 1.8.9")
WinWaitActive("Minecraft 1.8.9","", 5)

Global $result[2] =["1349","520"]

While(1)
   Sleep(1000)
   MouseClick("right")
   Send("{SHIFTDOWN}")
	  Sleep(40)
For $i = 0 To 100 Step 1
   qwer1()
   Sleep(10)
Next
Sleep(40)
	  Send("{SHIFTUP}")
Sleep(500)
Send("ESC",1)
Send("{e}")
   Sleep(700)
   MouseClick("left",1570,985,1,0)
   While(not(PixelGetColor(1279,585)=0xB5915B))
	  Sleep(500)
   WEnd
   If PixelGetColor(1279,585)=0xB5915B Then
	  MouseClick("left",1279,585)
	  Sleep(300)
   EndIf

   Send("{SHIFTDOWN}")
	  Sleep(40)
For $i = 0 To 150 Step 1
	;SFBS($coord)
	qwer()
	sleep(20)
   if PixelGetColor($result[0],$result[1]) = 0xE30000 Then
	  $q=1
	  Else

	  MouseClick("left",$result[0],$result[1],1,0)

   EndIf
Next
Sleep(40)
	  Send("{SHIFTUP}")
Sleep(500)
Send("ESC",1)
Sleep(500)

Sleep(600000)
WEnd

FUNC qwer() ;SFBSUPPORT;
   $coordi = PixelSearch(957, 829, 1597, 1118, 0xC07652)
  If Not @error Then

	  MouseClick("left",$coordi[0],$coordi[1],1,0)

  EndIf
EndFunc

FUNC qwer1() ;SFBSUPPORT;
   $coordi = PixelSearch(1601, 769,957, 340,0xC07652)
  If Not @error Then
	  MouseClick("left",$coordi[0],$coordi[1],1,0)
  EndIf
EndFunc

Func Terminate()
  Exit 0
EndFunc