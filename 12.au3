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
Send("{ENTER}")
Sleep(500)
send("/")
Sleep(50)
send("p")
Sleep(50)
send("i")
Sleep(50)
send("c")
Sleep(50)
send("k")
Sleep(50)
send("u")
Sleep(50)
send("p")
Sleep(50)
send("s")
Sleep(50)
send("t")
Sleep(50)
send("a")
Sleep(50)
send("s")
Sleep(50)
send("h")
Sleep(500)
Send("{ENTER}")
Sleep(500)
Send("{e}")
   Sleep(500)
   MouseClick("left",1570,985)
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

WEnd

FUNC qwer() ;SFBSUPPORT;
   $coordi = PixelSearch(957, 829, 1597, 1118, 0xC07652)
  If Not @error Then
	  MouseClick("left",$coordi[0],$coordi[1],1,0)
   EndIf
   Sleep(10)
EndFunc


Func Terminate()
  Exit 0
EndFunc