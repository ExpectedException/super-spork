HotKeySet("{ESCAPE}", "Terminate")
#include <MsgBoxConstants.au3>
#include <Array.au3>
Opt("WinTitleMatchMode", 3)
Opt("PixelCoordMode", 2)
Opt("MouseCoordMode", 2)
WinActivate ("Minecraft 1.8.9")
WinWaitActive("Minecraft 1.8.9","", 5)

Sleep(1000)
Global $coord11[2] = ["989","858"]
Global $coord12[2] = ["1061","858"]
Global $coord13[2] = ["1133","858"]
Global $coord14[2] = ["1205","858"]
Global $coord15[2] = ["1277","858"]
Global $coord16[2] = ["1349","858"]
Global $coord17[2] = ["1421","858"]
Global $coord18[2] = ["1493","858"]
Global $coord19[2] = ["1565","858"]
Global $coord21[2] = ["989","930"]
Global $coord22[2] = ["1061","930"]
Global $coord23[2] = ["1131","930"]
Global $coord24[2] = ["1205","930"]
Global $coord25[2] = ["1277","930"]
Global $coord26[2] = ["1349","930"]
Global $coord27[2] = ["1421","930"]
Global $coord28[2] = ["1493","930"]
Global $coord29[2] = ["1565","930"]
Global $coord31[2] = ["989","1002"]
Global $coord32[2] = ["1061","1002"]
Global $coord33[2] = ["1131","1002"]
Global $coord34[2] = ["1205","1002"]
Global $coord35[2] = ["1277","1002"]
Global $coord36[2] = ["1349","1002"]
Global $coord37[2] = ["1421","1002"]
Global $coord38[2] = ["1493","1002"]
Global $coord39[2] = ["1565","1002"]
Global $coord41[2] = ["989","1090"]
Global $coord42[2] = ["1061","1090"]
Global $coord43[2] = ["1131","1090"]
Global $coord44[2] = ["1205","1090"]
Global $coord45[2] = ["1277","1090"]
Global $coord46[2] = ["1349","1090"]
Global $coord47[2] = ["1421","1090"]
Global $coord48[2] = ["1493","1090"]
Global $result[2] =["1370","468"]
Global $iter[35] =[$coord11,$coord12,$coord13,$coord14,$coord15,$coord16,$coord17,$coord18,$coord19,$coord21,$coord22,$coord23,$coord24,$coord25,$coord26,$coord27,$coord28,$coord29,$coord31,$coord32,$coord33,$coord34,$coord35,$coord36,$coord37,$coord38,$coord39,$coord41,$coord42,$coord43,$coord44,$coord45,$coord46,$coord47,$coord48]

While(1)
   Sleep(1000)
   Sleep(1000)
   MouseClick("left")
   Sleep(1000)
   MouseMove(1285,763)
   Sleep(500)
   if PixelGetColor(1348,712)=0xB7B7B7 Then
   ConsoleWrite("qwe")
   MouseClick("left",1353,699)
   EndIf
   $c = PixelSearch(1025, 479, 1530, 624, 0xC07652)
   While(@error)
   $c = PixelSearch(1025, 479, 1530, 624, 0xC07652)
   WEnd
   $c = PixelSearch(1025, 479, 1530, 624, 0xC07652)
   If Not @error Then
	  MouseClick("left",$c[0],$c[1])
   EndIf
   Sleep(2000)
   Send("{ESC}",1)
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
for $j = 0 to 2 step 1
For $i = 0 To 34 Step 1
    Global $coord[2] = $iter[$i]
	;SFBS($coord)
	qwer()
	sleep(20)
   if PixelGetColor($result[0],$result[1]) = 0xE30000 Then
	  $q=1
	  Else
	  Send("{SHIFTDOWN}")
	  Sleep(40)
	  MouseClick("left",$result[0],$result[1],1,0)
	  Sleep(40)
	  Send("{SHIFTUP}")
   EndIf
Next
Next
Send("ESC",1)
WEnd

FUNC SFBS($crd) ;SFBSUPPORT;
   if PixelGetColor($crd[0],$crd[1]) = 0xC07652 Then
	  Send("{SHIFTDOWN}")
	  Sleep(40)
	  MouseClick("left",$crd[0],$crd[1],1,0)
	  Sleep(40)
	  Send("{SHIFTUP}")
	  Return True
   Else
	  Return False
   EndIf
EndFunc

FUNC qwer() ;SFBSUPPORT;
   $coordi = PixelSearch(957, 829, 1597, 1118, 0xC07652)
  If Not @error Then
    Send("{SHIFTDOWN}")
	  Sleep(40)
	  MouseClick("left",$coordi[0],$coordi[1],1,0)
	  Sleep(40)
	  Send("{SHIFTUP}")
  EndIf
EndFunc
Func Terminate()
  Exit 0
EndFunc