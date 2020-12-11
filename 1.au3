#include <MsgBoxConstants.au3>
#Include <Array.au3>
Example()
HotKeySet("{ESCAPE}", "Terminate")
Opt("MouseCoordMode",2)
Opt("WinTitleMatchMode", 3)
Opt("PixelCoordMode", 2)
WinActivate ("Dota 2")
WinWaitActive("Dota 2")
Global $SetOfParasha[4]
Local $Gamecount = 0
Local $GamecountDEF = -1
Local $fDiff = 0

Func Example()
   If WinActivate("Dota 2") = false Then
   ;Local $iPID = Run("C:\Program Files\Steam\steamapps\common\dota 2 beta\game\bin\win32\dota2.exe", "")
    Local $iPID = Run("Z:\DOTA\steamapps\common\dota 2 beta\game\bin\win32\dota2.exe", "")
	;Local $iPID = Run("Z:\Obshak\dota 2 beta\game\bin\win32\dota2.exe", "")
    ; Wait 10 seconds for the Notepad window to appear.
    WinWait("[CLASS:SDL_app]", "", 100)
    ; Wait for 2 seconds.
    Sleep(2000)
	EndIf
 EndFunc   ;==>Example

Func Terminate()
  Exit 0
EndFunc

Func KillSomeOne()
MouseMove(287,193,1)
$raz=109
$dva=29
$tri=619
$chetiri=406
$color=0xD23400
$shades=3
;$color1=0x1E0D07 ;huskar
;$color1=0x1F0D07 ;warlock
$color1=0x1B0B06 ;helm of dominator aura
$shades1=1
for $i = 0 to 2 Step 1
   $pixel = 0
   $pixel1 = 0
   ;send("{F1}")
   sleep(100)
   ;send("{F1}")
   $pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
   If IsArray($pixel) then
	  While(1)
		 $pixel = 0
		 ;send("{F1}")
		 sleep(100)
		 ;send("{F1}")
		 $pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		 If IsArray($pixel) then
			local $w = random(0,1,1)
			if $w = 0 then
				MouseClick("left",$pixel[0],$pixel[1]+25,1,0)
				sleep(200)
				MouseClick("left",192,438,1,0)
				sleep(300)
			 endif
			 Sleep(500)
			MouseClick("right",$pixel[0],$pixel[1]+25,1,0)
		 Else
			Return
		 EndIf
	  WEnd
   EndIf
   Sleep(500)
   $pixel1 = PixelSearch($raz, $dva, $tri, $chetiri, $color1, $shades1)
   If IsArray($pixel1) then
	   While(1)
		 $pixel1 = 0
		 ;send("{F1}")
		 sleep(100)
		 ;send("{F1}")
		 $pixel1 = PixelSearch($raz, $dva, $tri, $chetiri, $color1, $shades1)
		 If IsArray($pixel1) then
		 local $w = random(0,1,1)
			if $w = 0 then
				MouseClick("left",$pixel1[0],$pixel1[1]+25,1,0)
				sleep(200)
				MouseClick("left",192,438,1,0)
				;MsgBox($MB_SYSTEMMODAL, "The value  ", 12)
				sleep(300)
			endif
			MouseClick("right",$pixel1[0],$pixel1[1]+25,1,0)
		 Else
			Return
		 EndIf
	  WEnd
   EndIf
Next
sleep(2000)
EndFunc


Func KillSomeOneNear()
MouseMove(287,193,1)
$raz=109
$dva=29
$tri=619
$chetiri=406
$color=0xD23400
$shades=3
$color1=0x1E0D07
$shades1=1
for $i = 0 to 2 Step 1
   $pixel = 0
   $pixel1 = 0
   send("{F1}")
   sleep(100)
   send("{F1}")
   $pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
   If IsArray($pixel) then
	  While(1)
		 $pixel = 0
		 send("{F1}")
		 sleep(100)
		 send("{F1}")
		 $pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		 If IsArray($pixel) then
			local $w = random(0,1,1)
			if $w = 0 then
				MouseClick("left",$pixel[0],$pixel[1]+25,1,0)
				sleep(200)
				MouseClick("left",192,438,1,0)
				sleep(300)
			 endif
			 Sleep(500)
			MouseClick("right",$pixel[0],$pixel[1]+25,1,0)
		 Else
			Return
		 EndIf
	  WEnd
   EndIf
   Sleep(500)
   $pixel1 = PixelSearch($raz, $dva, $tri, $chetiri, $color1, $shades1)
   If IsArray($pixel1) then
	   While(1)
		 $pixel1 = 0
		 send("{F1}")
		 sleep(100)
		 send("{F1}")
		 $pixel1 = PixelSearch($raz, $dva, $tri, $chetiri, $color1, $shades1)
		 If IsArray($pixel1) then
		 local $w = random(0,1,1)
			if $w = 0 then
				MouseClick("left",$pixel1[0],$pixel1[1]+25,1,0)
				sleep(200)
				MouseClick("left",192,438,1,0)
				sleep(300)
			endif
			MouseClick("right",$pixel1[0],$pixel1[1]+25,1,0)
		 Else
			Return
		 EndIf
	  WEnd
   EndIf
Next
sleep(2000)
EndFunc

Func B1()
	$raz=27
	$dva=464
	$tri=50
	$chetiri=473
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func B2()
	$raz=54
	$dva=466
	$tri=86
	$chetiri=473
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func B3()
	$raz=90
	$dva=472
	$tri=100
	$chetiri=439
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func B4()
	$raz=102
	$dva=435
	$tri=92
	$chetiri=425
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func B5()
	$raz=102
	$dva=420
	$tri=92
	$chetiri=406
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func B()
	Local $pixel = 0
	$pixel = B1()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = B2()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = B3()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = B4()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = B5()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
EndFunc

Func M1()
	$raz=36
	$dva=446
	$tri=15
	$chetiri=452
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func M2()
	$raz=46
	$dva=437
	$tri=27
	$chetiri=441
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func M3()
	$raz=63
	$dva=423
	$tri=37
	$chetiri=423
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func M4()
	$raz=79
	$dva=412
	$tri=53
	$chetiri=418
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func M5()
	$raz=89
	$dva=401
	$tri=67
	$chetiri=407
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func M()
	Local $pixel = 0
	$pixel = M1()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = M2()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = M3()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = M4()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = M5()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
EndFunc

Func T1()
	$raz=13
	$dva=434
	$tri=2
	$chetiri=447
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func T2()
	$raz=15
	$dva=429
	$tri=4
	$chetiri=415
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func T3()
	$raz=18
	$dva=429
	$tri=6
	$chetiri=379
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func T4()
	$raz=23
	$dva=377
	$tri=51
	$chetiri=387
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func T5()
	$raz=55
	$dva=378
	$tri=76
	$chetiri=390
	$color=0xAA0000
	$shades=10
	for $i = 0 to 2 Step 1
		$pixel = 0
		local $q = 0
		$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		If IsArray($pixel) then
			While(1)
				$pixel = 0
				$pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
				If IsArray($pixel) then
					MouseClick("left",$pixel[0]+2,$pixel[1]+3,10,0)
					Sleep(200)
					Return $pixel
				Else
					Return 0
				EndIf
			WEnd
	   EndIf
	Next
	sleep(200)
	Return 0
EndFunc

Func TT()
	Local $pixel = 0
	$pixel = T1()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = T2()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = T3()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = T4()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
	$pixel = T5()
	If IsArray($pixel) Then
		KillSomeOne()
 	 	Return
	EndIf
EndFunc

Func FindSomeOne()
MouseMove(287,193,1)
$raz=88
$dva=441
$tri=102
$chetiri=470
$color=0xAA0000
$shades=3
$color1=0x1E0D07
$shades1=1
for $i = 0 to 2 Step 1
   $pixel = 0
   $pixel1 = 0
   local $q = 0
   sleep(random(400,600,1))
   send("{F1}")
   sleep(100)
   send("{F1}")
   $pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
   If IsArray($pixel) then
	  While(1)
		 $pixel = 0

		 sleep(random(400,600,1))
		 ;send("{F1}")
		 sleep(100)
		 ;send("{F1}")
		 $pixel = PixelSearch($raz, $dva, $tri, $chetiri, $color, $shades)
		 If IsArray($pixel) then
		 if $q <> 2 then
		 MouseClick("left",$pixel[0]+2,$pixel[1]+3,1,0)
			$q += 1
			else
			KillSomeOne()
		endif
		 Else
			Return $SetOfParasha
		 EndIf
	  WEnd
   EndIf
Next
sleep(2000)
EndFunc

FUNC SFBS() ;SFBSUPPORT;
		 $left = 290
		 $top = 453
		 $right = 335
		 $bottom = 460

		 $color = 0xFFFFFF
		 Sleep(random(500,800,1))
		 $pixEL = PixelSearch($right, $bottom, $left, $top, $color, 1)
		 If @error Then
			SFBS()
		 Else
			Return
		 EndIf
	  EndFunc

Func SkillLearn()
   for $i = 0 to 2 step 1
   Local $q = Random(1,5,1)
   if $q = 1 Then
	  Send("^й")
   ElseIf $q = 2 Then
	  Send("^ц")
   ElseIf $q = 3 Then
	  Send("^у")
   ElseIf $q = 4 Then
	  Send("^к")
   ElseIf $q = 5 Then
	  Send("г")
	  $q1 = Random(1,2,1)
	  If $q1 = 1 Then
		 Send("1")
	  ElseIf $q1 = 2 Then
		 Send("2")
	  EndIf
   EndIf
   Next
EndFunc

Func SkillUse()
   local $q = Random(1,4,1)
   If $q = 1 Then
	  Sleep(100)
	  Send("й")
	  MouseClick("left", RDX(), RDY())
   ElseIf $q = 2 Then
	  Sleep(100)
	  Send("ц")
	  MouseClick("left", RDX(), RDY())
   ElseIf $q = 3 Then
	  Sleep(100)
	  Send("у")
	  MouseClick("left", RDX(), RDY())
   ElseIf $q = 4 Then
	  Sleep(100)
	  Send("к")
	  MouseClick("left", RDX(), RDY())
   EndIf
   Send("{ф}")
   sleep(100)
   MouseClick("right", RDX(), RDY())
EndFunc

Func BSRX()
   Local $x = Random( 501, 633, 1)
   Return $x
EndFunc

   Func BSRY()
   Local $y = Random( 66, 266, 1)
   Return $y
EndFunc

Func BuyShit()
   WinActivate ("Dota 2")
   WinWaitActive("Dota 2")
   sleep(100)
   Send("{F4}")
   Sleep(2000)
   MouseClick("right",581,134,1,2)
   for $i = 2 to 0 Step -1
   Sleep(100)
   MouseClick("left",560,56,1,2)
   Next
   Sleep(100)
   Send("{CTRLDOWN}")
   Send("{SHIFTDOWN}")
   for $i = 5 to 0 Step -1
	  Sleep(100)
	  MouseClick("left",BSRX(),BSRY(),1,1)
	  Sleep(100)
   Next
   Sleep(100)
   Send("{CTRLUP}")
   Send("{SHIFTUP}")
   Sleep(100)
   Send("{F4}")
EndFunc

Func RX()
   Local $x = Random( 10, 100, 1)
   Return $x
EndFunc

Func RY()
   Local $y = Random ( 385, 465, 1)
   Return $y
EndFunc

Func RMC() ;RandomMinimapClick
   SkillLearn()
   Sleep(random(150,155,1))
     MouseClick("left",RX() , RY(),10,0)
   Sleep(random(140,144,1))
   Sleep(500)
   KillSomeOne()
EndFunc

Func SFB();SearchForBuyback /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   KillSomeOneNear()
   Example()
   If PixelGetColor(482, 460) = 0xFFFFFF Then ;/////////recon
	  Sleep(100)
	  If PixelGetColor(482, 460) = 0xFFFFFF Then
		 Sleep(100)
		 If PixelGetColor(482, 460) = 0xFFFFFF Then
			Sleep(100)
			MouseClick("left",519,461,2,2)
		 EndIf
	  EndIf
   EndIf
   If PixelGetColor(359, 267) = 0xFFFFFF Then ;/////////////heroSwap
	  Sleep(100)
	  If PixelGetColor(359, 267) = 0xFFFFFF Then
		 Sleep(100)
		 If PixelGetColor(359, 267) = 0xFFFFFF Then
			Sleep(100)
			MouseClick("left",359,267,2,2)
		 EndIf
	  EndIf
   EndIf
   If PixelGetColor(365, 300) = 0xFFFFFF Then ;//////////partyCancel?
	  Sleep(100)
	  If PixelGetColor(365, 300) = 0xFFFFFF Then
		 Sleep(100)
		 If PixelGetColor(365, 300) = 0xFFFFFF Then
			Sleep(100)
			MouseClick("left",365, 300,2,2)
		 EndIf
	  EndIf
   EndIf
   Sleep(100)
   Local $r = Random(1,10,1)
   If $r = 1 Then
	  Send( "{f1}" )
	  Send( "{f1}" )
   EndIf
	  Sleep(5000)
EndFunc

Func RbRX() ;MinimapRandomX
   Local $x = Random ( 94, 95, 1)
   Return $x
EndFunc

Func RbRY() ;MinimapRandomY
   Local $y = Random ( 466, 467, 1)
   Return $y
EndFunc

Func DbRX() ;MinimapRandomX
   Local $x = Random ( 99, 101, 1)
   Return $x
EndFunc

Func DbRY() ;MinimapRandomY
   Local $y = Random ( 444, 446, 1)
   Return $y
EndFunc

Func DmRX() ;MinimapRandomX
   Local $x = Random ( 52, 54, 1)
   Return $x
EndFunc

Func DmRY() ;MinimapRandomY
   Local $y = Random ( 422, 423, 1)
   Return $y
EndFunc

Func DtRX() ;MinimapRandomX
   Local $x = Random ( 12, 14, 1)
   Return $x
EndFunc

Func DtRY() ;MinimapRandomY
   Local $y = Random ( 385, 387, 1)
   Return $y
EndFunc

Func RmRX() ;MinimapMidRandomX
   Local $x = Random ( 42, 43, 1)
   Return $x
EndFunc

Func RmRY() ;MinimapMidRandomY
   Local $y = Random ( 430, 431, 1)
   Return $y
EndFunc

Func RtRX() ;MinimapTopRandomX
   Local $x = Random ( 11, 12, 1)
   Return $x
EndFunc

Func RtRY() ;MinimapTopRandomY
   Local $y = Random ( 407, 408, 1)
   Return $y
EndFunc

Func RDX()
   Local $x = Random ( 228, 428,1)
   Return $x
EndFunc

Func RDY()
   Local $y = Random ( 120, 220,1)
   Return $y
EndFunc

Func SRC() ;NotShiftRightClick
   WinActivate ("Dota 2")
   WinWaitActive("Dota 2")
   For $i = 3 to 0 Step -1
	  Sleep(random(100,140,1))
   	  Send("{SHIFTDOWN}")
	  Send("{ф down}") ;Holds the A key down
	  Sleep(100)
	  MouseClick("left", RDX(), RDY(),1,2)
	  Sleep(100)
	  Send("{ф up}") ;Releases the A key
	  Sleep(100)
	  SkillUse()
	  Send("{SHIFTUP}")
	  ;Sleep(random(1500,1760,1))
   Next
EndFunc

Func SRCS() ;ShiftRightClick
   WinActivate ("Dota 2")
   WinWaitActive("Dota 2")
   For $i = 18 to 0 Step -1
	  Sleep(random(40,50,1))
   	  Send("{SHIFTDOWN}")
	  Send("{ф down}") ;Holds the A key down
	  Sleep(50)
	  MouseClick("left", RDX(), RDY(),1,1)
	  Sleep(50)
	  Send("{ф up}") ;Releases the A key
	  Sleep(50)
	  Send("{SHIFTUP}")
	  ;Sleep(random(1500,1760,1))
   Next
EndFunc

Func SRCF() ;NotShiftRightClick
   WinActivate ("Dota 2")
   WinWaitActive("Dota 2")
   For $i = 12 to 0 Step -1
	  Send("{SHIFTDOWN}")
	  Sleep(random(40,50,1))
	  Send("{ф down}") ;Holds the A key down
	  Sleep(50)
	  MouseClick("left", RDX(), RDY(),1,1)
	  Sleep(50)
	  Send("{ф up}") ;Releases the A key
	  Sleep(50)
	  SkillUse()
	  Send("{SHIFTUP}")
	  ;Sleep(random(1500,1760,1))
   Next
EndFunc

Func RBMRC();RadiantBottomMinimapRightClick
   	  For $i = 4 to 0 step -1
		 Send("{SHIFTDOWN}")
		 MouseClick("right", RbRX(), RbRY() )
		 Sleep(Random(100,105,1))
		 Send("{SHIFTUP}")
		 Sleep(random(102,103,1))
	  Next
EndFunc

Func DBMRC();DireBottomMinimapRightClick
   	  For $i = 4 to 0 step -1
		 Send("{SHIFTDOWN}")
		 MouseClick("right", DbRX(), DbRY() )
		 Sleep(Random(300,400,1))
		 Send("{SHIFTUP}")
		 Sleep(random(200,300,1))
	  Next
EndFunc

Func DMMRC();DireMidMinimapRightClick
   	  For $i = 4 to 0 step -1
		 Send("{SHIFTDOWN}")
		 MouseClick("right", DmRX(), DmRY() )
		 Sleep(Random(100,105,1))
		 Send("{SHIFTUP}")
		 Sleep(random(102,103,1))
	  Next
EndFunc

Func DTMRC();DireTopMinimapRightClick
   	  For $i = 4 to 0 step -1
		 Send("{SHIFTDOWN}")
		 MouseClick("right", DtRX(), DtRY() )
		 Sleep(Random(100,105,1))
		 Send("{SHIFTUP}")
		 Sleep(random(102,103,1))
	  Next
EndFunc

Func RMMRC() ;RadiantMidMinimapRightClick
   For $i = 4 to 0 step -1
	  Send("{SHIFTDOWN}")
	  MouseClick("right", RmRX(), RmRY() )
	  Sleep(Random(100,105,1))
	  Send("{SHIFTUP}")
	  Sleep(random(102,103,1))
   Next
EndFunc

Func RTMRC() ;RadiantTopMinimapRightClick
   For $i = 4 to 0 step -1
	  Send("{SHIFTDOWN}")
	  MouseClick("right", RtRX(), RtRY() )
	  Sleep(Random(100,105,1))
	  Send("{SHIFTUP}")
	  Sleep(random(102,103,1))
   Next
EndFunc

Func BRCFX() ;BotRadiantCameraFeedX
   Local $x = Random ( 98, 99, 1)
   Return $x
EndFunc

Func BRCFY() ;BotRadiantCameraFeedY
   Local $y = Random (447, 448,1)
   Return $y
EndFunc

Func MRCFX() ;MidRadiantCameraFeedX
   Local $x = Random ( 52, 54, 1)
   Return $x
EndFunc

Func MRCFY() ;MidRadiantCameraFeedY
   Local $y = Random (422, 424,1)
   Return $y
EndFunc

Func TRCFX() ;TopRadiantCameraFeedX
   Local $x = Random ( 14, 16, 1)
   Return $x
EndFunc

Func TRCFY() ;TopRadiantCameraFeedY
   Local $y = Random (387, 389,1)
   Return $y
EndFunc

Func TPB() ;TPBOT
	  Sleep(100)
	  Send("{F3}")
	  Sleep(100)
	  Send("{F5}")
	  Sleep(100)
	  Send("{F8}")
	  Sleep(100)
   	  Send("{е}")
	  Sleep(100)
	  MouseClick("left", 97, 455)
	  Sleep(5000)
EndFunc

Func TPM() ;TPMID
	  Sleep(100)
	  Send("{F3}")
	  Sleep(100)
	  Send("{F5}")
	  Sleep(100)
	  Send("{F8}")
   	  Sleep(100)
   	  Send("{е}")
	  Sleep(100)
	  MouseClick("left", 49, 428)
	  Sleep(5000)
EndFunc

Func TPT() ;TPTOP
	  Sleep(100)
	  Send("{F3}")
	  Sleep(100)
	  Send("{F5}")
	  Sleep(100)
	  Send("{F8}")
   	  Sleep(100)
   	  Send("{е}")
	  Sleep(100)
	  MouseClick("left", 10, 390)
	  Sleep(5000)
EndFunc

Func FBR() ;FeedBotRadiant
   local $rand = random(0,1,1)
   if $rand = 1 then
	  $pixel = 0
	  $pixel = PixelSearch(86,466,90,470,0x00FF00,30,1)
	  if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 96, 462,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 98, 441,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 99, 417,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 98, 400,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 92, 392,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  EndIf
	  $pixel = PixelSearch(50,468,54,472,0x00FF00,30,1)
	  if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 65, 472,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 96, 462,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 98, 441,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 99, 417,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 98, 400,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 92, 392,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  Else
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 23, 468,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 65, 472,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 96, 462,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 98, 441,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 99, 417,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 98, 400,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 92, 392,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
	  EndIf
   Else
	  sleep(100)
	  RMC()
   EndIf
EndFunc

Func FMR() ;FeedMidRadiant
  local $rand = random(0,1,1)
   if $rand = 1 then
	  $pixel = 0
	  $pixel = PixelSearch(41,433,43,435,0x00FF00,30,1)
	  if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 55, 423,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 71, 411,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 78, 408,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 85, 397,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 90, 392,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  EndIf
	  $pixel = PixelSearch(27,442,30,444,0x00FF00,30,1)
	  if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 33, 444,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 55, 423,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 71, 411,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 78, 408,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 85, 397,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 90, 392,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  Else
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 23, 455,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 33, 444,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 55, 423,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 71, 411,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 78, 408,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 85, 397,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 90, 392,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
	  EndIf
   Else
	  sleep(100)
	  RMC()
   EndIf
EndFunc

Func FTR() ;FeedTopRadiant
   local $rand = random(0,1,1)
   if $rand = 1 then
	  $pixel = 0
	  $pixel = PixelSearch(7,410,11,414,0x00FF00,30,1)
	if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 15, 385,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 49, 383,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 72, 384,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 79, 386,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 90, 393,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  EndIf
	  $pixel = PixelSearch(8,429,12,434,0x00FF00,30,1)
	  if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 10, 427,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 15, 385,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 49, 383,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 72, 384,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 79, 386,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 90, 393,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  Else
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 8, 445,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 10, 427,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 15, 385,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 49, 383,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 72, 384,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 79, 386,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 90, 393,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
	  EndIf
   Else
	  sleep(100)
	  RMC()
   EndIf
EndFunc

Func FMD()
   local $rand = random(0,1,1)
   if $rand = 1 then
   $pixel = 0
$pixel = PixelSearch(96,435,100,439,0x00FF00,30,1)
    if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 45, 435,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 33, 443,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 26, 453,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 18, 460,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 14, 464,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
			EndIf
		 EndIf
	  $pixel = PixelSearch(95,420,99,424,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 70, 415,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 45, 435,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 33, 443,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 26, 453,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 18, 460,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 14, 464,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  Else
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 82, 403,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 70, 415,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 45, 435,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 33, 443,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 26, 453,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 18, 460,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 14, 464,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
   Else
	  sleep(100)
	  RMC()
   EndIf
Endfunc

Func FBD()
  local $rand = random(0,1,1)
   if $rand = 1 then
	  $pixel = 0
	$pixel = PixelSearch(55,419,58,522,0x00FF00,30,1)
    if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 100, 445,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 92, 469,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 56, 471,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 37, 473,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 23, 469,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
		 EndIf
	  $pixel = PixelSearch(69,408,72,411,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 97, 426,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 100, 445,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 92, 469,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 56, 471,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 37, 473,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 23, 469,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
			EndIf
	  Else
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 100, 411,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 97, 426,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 100, 445,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 92, 469,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 56, 471,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 37, 473,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 23, 469,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
   Else
	  sleep(100)
	  RMC()
   EndIf
Endfunc

Func FTD()
  local $rand = random(0,1,1)
   if $rand = 1 then
	  $pixel = 0
	$pixel = PixelSearch(18,380,22,384,0x00FF00,30,1)
    if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 387,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 11, 410,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 431,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 9, 439,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 457,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
			EndIf
		 EndIf
		 $pixel = PixelSearch(51,380,55,384,0x00FF00,30,1)
	  if IsArray($pixel) Then
		 Sleep(100)
		 if Not(@error) Then
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 49, 384,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 387,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 11, 410,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 431,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 9, 439,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 457,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
	  Else
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 73, 386,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 49, 384,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 387,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 11, 410,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 431,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 9, 439,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Send("{SHIFTDOWN}")
			Send("{ф}")
			sleep(100)
			MouseClick("left", 13, 457,1,1)
			Sleep(Random(100,105,1))
			Send("{SHIFTUP}")
			sleep(100)
			Return
		 EndIf
   Else
	  sleep(100)
	  RMC()
   EndIf
Endfunc

Func VIBD() ;VihodNapositionPodBotTaveromDire
$pixel = 0
$pixel = PixelSearch(96,435,100,439,0x00FF00,30,1)
    if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", DbRX(), DbRY(),1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(95,420,99,424,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 98, 426,1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(98,400,101,402,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 100, 413,1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(18,380,22,384,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 97, 397,1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   Else
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", DbRX(), DbRY(),1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
Endfunc

Func VIMD() ;VihodNapositionPodMidTaveromDire
	$pixel = 0
	$pixel = PixelSearch(55,419,58,522,0x00FF00,30,1)
    if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", DmRX(), DmRY(),1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(69,408,72,411,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 70, 415,1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(85,397,88,400,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 81, 403,1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(18,380,22,384,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 87, 399,1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   Else
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", DmRX(), DmRY(),1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
Endfunc

Func VITD() ;VihodNapositionPodBTopTaveromDire
	$pixel = 0
	$pixel = PixelSearch(18,380,22,384,0x00FF00,30,1)
    if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", DtRX(), DtRY(),1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(51,380,55,384,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 50, 385,1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(79,384,82,388,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 73, 387,1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(90,387,94,392,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 74, 387,1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   Else
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", DtRX(), DtRY(),1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
Endfunc

Func VIBR() ;VihodNapositionPodBotTaveromRadiant
   $pixel = 0
   $pixel = PixelSearch(86,466,90,470,0x00FF00,30,1)
   ;MsgBox($MB_SYSTEMMODAL, "The value  ", $pixel[0])
   if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
		 for $i = 3 to 0 step -1
		 Sleep(100)
		 MouseClick("left", RbRX(), RbRY(),1,1)
		 Sleep(100)
		 Next
		 B()
		 Return
	  EndIf
   EndIf
   $pixel = PixelSearch(50,468,54,472,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 57, 471,1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(21,469,24,472,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 30, 470,1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(9,461,13,465,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 20, 468,1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
   Else
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", RbRX(), RbRY(),1,1)
	  Sleep(100)
	  Next
	  B()
	  Return
   EndIf
Endfunc

Func VIMR() ;VihodNapositionPodMidTaveromRadiant
$pixel = 0
$pixel = PixelSearch(41,433,43,435,0x00FF00,30,1)
   if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", RmRX(), RmRY())
	  Sleep(100)
	  Next
   M()
   Return
   EndIf
   EndIf
   $pixel = PixelSearch(27,442,30,444,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 32, 444,1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(19,456,21,459,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 30, 470,1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(9,461,13,465,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 16, 459,1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
   Else
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", RmRX(), RmRY(),1,1)
	  Sleep(100)
	  Next
	  M()
	  Return
   EndIf
Endfunc

Func VITR() ;VihodNapositionPodTopTaveromRadiant
$pixel = 0
$pixel = PixelSearch(7,410,11,414,0x00FF00,30,1)
 if IsArray($pixel) Then
	  Sleep(100)
	  if Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", RtRX(), RtRY())
	  Sleep(100)
	  Next
   TT()
   Return
EndIf
EndIf
   $pixel = PixelSearch(8,429,12,434,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 11, 427,1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(7,450,10,453,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 7, 445,1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   EndIf
   $pixel = PixelSearch(9,461,13,465,0x00FF00,30,1)
   If IsArray($pixel) Then
	  Sleep(100)
	  If Not(@error) Then
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", 10, 457,1,1)
	  Sleep(100)
	  Next
	  TT()
	  Return
   EndIf
   Else
	  for $i = 3 to 0 step -1
	  Sleep(100)
	  MouseClick("left", RtRX(), RtRY(),1,1)
	  Sleep(100)
	  Next
	  TT()
   EndIf
Endfunc

Func T(ByRef $SetOfParasha)
    $fDiff = TimerDiff($SetOfParasha[1])
	  if  $fDiff > 120000 Then
	  ;MsgBox($MB_SYSTEMMODAL, "case before ", $SetOfParasha[0])
	  Local $x1 = Random(1,100,1)
	  Local $x2 = Random(1,100,1)
		 If $SetOfParasha[0] = (0 or 2 or 4 or 6 or 8 or 16 or 18 or 10 or 12 or 14) Then
			If $x1 > 0 AND $x1 < 11 Then
			   $SetOfParasha[0] = 0 ;botradiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 10 AND $x1 < 21 Then
			   $SetOfParasha[0] = 2 ;midradiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 20 AND $x1 < 31 Then
			   $SetOfParasha[0] = 4 ;topradiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 30 AND $x1 < 41 Then
			   $SetOfParasha[0] = 6 ;bigjungleradiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 40 AND $x1 < 51 Then
			   $SetOfParasha[0] = 16 ;bigjungleDire
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 50 AND $x1 < 61 Then
			   $SetOfParasha[0] = 8 ;smalljungleradiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 60 AND $x1 < 71 Then
			   $SetOfParasha[0] = 18 ;smalljungleDire
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 70 AND $x1 < 81 Then
			   $SetOfParasha[0] = 10 ;case MidPushRadiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 80 AND $x1 < 91 Then
			   $SetOfParasha[0] = 12 ;case BotPushRadiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x1 > 90 AND $x1 < 101 Then
			   $SetOfParasha[0] = 14 ;case TopPushRadiant
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			EndIf
			EndIf
		 If $SetOfParasha[0] = (1 or 3 or 5 or 7 or 17 or 19 or 9 or 11 or 13 or 15) Then
			If $x2 > 0 AND $x2 < 11 Then
			   $SetOfParasha[0] = 1
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 10 AND $x2 < 21 Then
			   $SetOfParasha[0] = 3
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 20 AND $x2 < 31 Then
			   $SetOfParasha[0] = 5
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 30 AND $x2 < 41 Then
			   $SetOfParasha[0] = 17
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 40 AND $x2 < 51 Then
			   $SetOfParasha[0] = 7
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 50 AND $x2 < 61 Then
			   $SetOfParasha[0] = 19
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 60 AND $x2 < 71 Then
			   $SetOfParasha[0] = 9
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 70 AND $x2 < 81 Then
			   $SetOfParasha[0] = 11
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 80 AND $x2 < 91 Then
			   $SetOfParasha[0] = 13
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			ElseIf $x2 > 90 AND $x2 < 101 Then
			   $SetOfParasha[0] = 15
			   $SetOfParasha[1] = TimerInit()
			   Return $SetOfParasha
			EndIf
		 EndIf
	;  MsgBox($MB_SYSTEMMODAL, "case ", $SetOfParasha[0])
	;  MsgBox($MB_SYSTEMMODAL, "GG GO NEXT ", $fDiff)
	  $SetOfParasha[1] = TimerInit()
	  Return $SetOfParasha
   Else
	  Return $SetOfParasha
   EndIf
EndFunc

Func TTF($SetOfParasha)
   ;MsgBox($MB_SYSTEMMODAL, "case1 ", $SetOfParasha[2])
   Local $fDiff = TimerDiff($SetOfParasha[2])
   ;MsgBox($MB_SYSTEMMODAL, "case2 ", $SetOfParasha[2])
	  if  $fDiff > 1000000 Then
	  $SetOfParasha[3] = 1
	  Return $SetOfParasha
   Else
	  Return $SetOfParasha
   EndIf
EndFunc

Func SearchGame()
   Sleep(100)
   Example()
   If PixelGetColor(518, 460) = 0xFFFFFF Then
	  Sleep(100)
	  if PixelGetColor(518, 460) = 0xFFFFFF Then
		 Sleep(100)
		 MouseClick("left", 534, 459,1,2)
		 Sleep(random(1500,3500))
		 if PixelGetColor(532,456) = 0xFFFFFF Then
			Sleep(100)
			If PixelGetColor(532,456) = 0xFFFFFF Then
			   Sleep(100)
			   MouseClick("left", 534, 459,1,2)
			   Sleep(random(1500,3500))
			   If PixelGetColor(262,380) = 0xFFFFFF Then
				  Sleep(100)
				  If PixelGetColor(262,380) = 0xFFFFFF Then
					 Sleep(100)
					 MouseClick("left", 267, 379,3,3)
				  EndIf
			   EndIf
			EndIf
		 EndIf
	  EndIf
   EndIf
   If PixelGetColor(321,262) = 0xFFFFFF Then
	  Sleep(100)
	  If PixelGetColor(321,262) = 0xFFFFFF Then
		 Sleep(100)
		 If PixelGetColor(321,262) = 0xFFFFFF Then
			Sleep(100)
			MouseClick("left",321,262,3,3)
		 EndIf
	  EndIf
   EndIf
EndFunc

Func Start(ByRef $SetOfParasha)
   While (1)
	  Sleep(100)
	  SearchGame()
	  Sleep(100)
	  If PixelGetColor (503,399) = 0xFFFFFF Then
		 MouseClick("left", 503, 399,3,3)
	  EndIf
	  If PixelGetColor (296,231) = 0xFFFFFF Then
		 MouseClick("left", 296, 231,3,3)
	  EndIf
	  IF PixelGetColor (321,342) = 0xFFFFFF Then
		 MouseClick("left", 321, 342,3,3)
	  EndIf
	  If PixelGetColor( 15 , 461 ) = 0x00FF00 Then
		 $SetOfParasha [3] = 0
		 for $i = 2 to 1 step -1
			$SetOfParasha[$i] = TimerInit()
		 Next
		 Local $x = Random(1,100,1)
		 If $x > 0 AND $x < 21 Then
			$SetOfParasha[0] = 0 ;botradiant
		 ElseIf $x > 20 AND $x < 41 Then
			$SetOfParasha[0] = 2 ;midradiant
		 ElseIf $x > 40 AND $x < 61 Then
			$SetOfParasha[0] = 4 ;topradiant
		 ElseIf $x > 60 AND $x < 81 Then
			$SetOfParasha[0] = 6 ;bigjungleradiant
		 ElseIf $x > 80 AND $x < 101 Then
			$SetOfParasha[0] = 8 ;smalljungleradiant
		 EndIf
		 Sleep(Random(100,500,1))
		 MouseClick("left",RX() , RY())
		 BuyShit()
		 Return $SetOfParasha
	  ElseIf PixelGetColor (91,393) = 0x00FF00 Then
		 Local $x = Random(1,100,1)
		 $SetOfParasha [3] = 0
		 for $i = 2 to 1 step -1
			$SetOfParasha[$i] = TimerInit()
		 Next
		 If $x > 0 AND $x < 21 Then
			$SetOfParasha[0] = 1 ;botdire
		 ElseIf $x > 20 AND $x < 41 Then
			$SetOfParasha[0] = 3 ;middire
		 ElseIf $x > 40 AND $x < 61 Then
			$SetOfParasha[0] = 5 ;topdire
		 ElseIf $x > 60 AND $x < 81 Then
			$SetOfParasha[0] = 7 ;bigjungledire
		 ElseIf $x > 80 AND $x < 101 Then
			$SetOfParasha[0] = 9 ;smalljungledire
		 EndIf
		 Sleep(Random(100,500,1))
		 MouseClick("left",RX() , RY())
		 BuyShit()
		 Return $SetOfParasha
	  EndIf
	  Sleep(100)
   WEnd
EndFunc

Func FFRRX()
   Local $x = Random (85, 98,1)
   Return $x
EndFunc

Func FFRRY()
   Local $y = Random (394, 398,1)
   Return $y
EndFunc

Func MPR()
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 11, 463,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 24, 451,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 30, 443,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 45, 429,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 61, 419,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 70, 409,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 82, 399,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 394,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 385,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Sleep(random(3000,4500,1))
EndFunc

Func MPD()
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 385,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 394,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 82, 399,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 70, 409,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 61, 419,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 45, 429,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 30, 443,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 24, 451,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 11, 463,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Sleep(random(3000,4500,1))
EndFunc

Func BPR()
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 12, 462,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 24, 468,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 41, 470,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 52, 470,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 72, 467,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 88, 468,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 459,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 449,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 438,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 422,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 403,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 396,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 92, 391,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 100, 387,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
EndFunc

Func BPD()
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 100, 387,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 92, 391,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 396,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 403,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 422,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 438,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 449,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 97, 459,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 88, 468,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 72, 467,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 52, 470,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 41, 470,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 24, 468,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 12, 462,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
EndFunc

Func TPR()
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 11, 466,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 13, 459,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 7, 451,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 8, 431,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 8, 413,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 8, 393,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 19, 383,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
    Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 38, 381,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 53, 383,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 66, 382,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 79, 384,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 90, 391,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 388,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
EndFunc

Func TPD()
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 98, 388,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 90, 391,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 79, 384,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 66, 382,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 53, 383,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 38, 381,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 19, 383,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 8, 393,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
    Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 8, 413,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 8, 431,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 7, 451,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 13, 459,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
   Send("{SHIFTDOWN}")
   Send("{ф}")
   sleep(100)
   MouseClick("left", 11, 466,1,2)
   Sleep(Random(100,105,1))
   Send("{SHIFTUP}")
   sleep(100)
EndFunc

#comments-start
Switch $DnotaGame
Case 1
   Do
	  T($hTimer,$DnotaGame)
   	  Sleep(Random(3500,4750,1))
	  T($hTimer,$DnotaGame)
	  for $i = 5 to 0 Step -1
		 RBMRC()
		 T($hTimer,$DnotaGame)
		 sleep(random(350,500,1))
	  Next
	  T($hTimer,$DnotaGame)
	  VI()
	  T($hTimer,$DnotaGame)
	  Sleep(Random(2500,2750,1))
	  T($hTimer,$DnotaGame)
	  TPB() ;TpNaBot
	  T($hTimer,$DnotaGame)
	  Sleep(Random(2500,2750,1))
	  T($hTimer,$DnotaGame)
	  RMC() ;RandomnoClickaemPoKarte
	  T($hTimer,$DnotaGame)
	  Sleep(Random(2500,2750,1))
	  T($hTimer,$DnotaGame)
	  VI()
	  T($hTimer,$DnotaGame)
	  Sleep(Random(2500,2750,1))
	  T($hTimer,$DnotaGame)
	  FB() ;FeedimNaBote
	  T($hTimer,$DnotaGame)
	  SFB()
	  T($hTimer,$DnotaGame)
	  Sleep(Random (15000, 40000, 1))
	  T($hTimer,$DnotaGame)
	  SFB()
	  T($hTimer,$DnotaGame)
   Until $DnotaGame = 3
Case 2
   For $i = 1 To 1 Step -1
   MouseClick("left",RX() , RY()) ;camera
   Next
Case 3
   Local $iter = 10
   While $iter >0
	  for $i = 5 to 0 Step -1
		 RBMRC()
		 sleep(random(350,1500,1))
	  Next
	  TPM() ;TpNaMid
	  Sleep(Random(2500,2750,1))
	  RMC() ;RandomnoClickaemPoKarte
	  Sleep(Random(2500,2750,1))
	  VI()
	  Sleep(Random(2500,2750,1))
	  FB() ;FeedimNaBote
	  Sleep(Random (15000, 40000, 1))
	  SFB()
	  $iter = $iter - 1
   WEnd
   $DnotaGame = $DnotaGame +2
EndSwitch
#comments-end

Func IsInGameR(ByRef $SetOfParasha)
SFB()
Sleep(100)
RMC()
Sleep(100)
If not(PixelGetColor(560,465) = 0xF4D461) Then
   Sleep(100)
   SFB()
   If not(PixelGetColor(560,465) = 0xF4D461) then
	  Sleep(100)
	  If not(PixelGetColor(560,465) = 0xF4D461) then
		 Sleep(100)
		 If not(PixelGetColor(560,465) = 0xF4D461) then
			Sleep(100)
			If not(PixelGetColor(560,465) = 0xF4D461) then
			   Sleep(100)
			   $SetOfParasha[0] = 666
			   Return $SetOfParasha
			EndIf
		 EndIf
	  EndIf
   EndIf
EndIf
Local $Temp = $SetOfParasha[0]
Sleep(100)
$SetOfParasha = T($SetOfParasha)
;MsgBox($MB_SYSTEMMODAL, "case ", $SetOfParasha[0])
;MsgBox($MB_SYSTEMMODAL, "timer init ", $SetOfParasha[1])
;MsgBox($MB_SYSTEMMODAL, "global time to feed ", $SetOfParasha[2])
;MsgBox($MB_SYSTEMMODAL, "time to feed ", $SetOfParasha[3])
If $Temp <> $SetOfParasha[0] Then
   Return $SetOfParasha
Else
	Sleep(Random(100,305,1))
	KillSomeOneNear()
   Sleep(Random(100,305,1))
   Return $SetOfParasha
   EndIf
EndFunc

Func ChooseTp()
   Local $i = Random(1,3,1)
   If $i = 1 Then
	  TPB()
   ElseIf $i = 2 Then
	  TPM()
   ElseIf $i = 3 Then
	  TPT()
   EndIf
   Sleep(random(1500,2500))
EndFunc

Func VIBJR() ;VihodNapositionBigJungleRadiant
   for $i = 3 to 0 step -1
	  sleep(100)
	  MouseClick("left", Random(460,442,1), Random(44,80,1))
	  sleep(100)
   Next
   SRC()
Endfunc

Func VIBJD() ;VihodNapositionBigJungleDire
   for $i = 3 to 0 step -1
	  sleep(100)
	  MouseClick("left", Random(43,61,1), Random(391,397,1))
	  sleep(100)
   Next
   SRC()
Endfunc

Func VISJR() ;VihodNapositionSmallJungleRadiant
   for $i = 3 to 0 step -1
	  sleep(100)
	  MouseClick("left", Random(16,31,1), Random(418,432,1))
	  sleep(100)
   Next
   SRC()
Endfunc

Func VISJD() ;VihodNapositionSmallJungleDire
   for $i = 3 to 0 step -1
	  sleep(100)
	  MouseClick("left", Random(76,85,1), Random(425,429,1))
	  sleep(100)
   Next
   SRC()
Endfunc

Func RRFCSB() ;RadiantRandomFarmCreepSpotBig
   Local $x = Random(1,5,1)
   Send("{SHIFTDOWN}")
   Send("{ф down}")
   If $x = 1 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 42,456,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 2 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 54,451,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 3 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 54,442,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 4 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 78,459,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 5 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 88,457,1,1)
	  Sleep(Random(100,105,1))
   EndIf
   Send("{ф up}")
   Send("{SHIFTUP}")
   Sleep(random(5000,10000,1))
Endfunc

Func DRFCSB() ;DireRandomFarmCreepSpotBig
   Local $x = Random(1,6,1)
   Send("{SHIFTDOWN}")
   Send("{ф down}")
   If $x = 1 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 64,404,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 2 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 49,411,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 3 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 54,401,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 4 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 42,396,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 5 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 37,392,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 6 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 24,402,1,1)
	  Sleep(Random(100,105,1))
   EndIf
   Send("{ф up}")
   Send("{SHIFTUP}")
   Sleep(random(5000,10000,1))
Endfunc

Func RRFCSS() ;RadiantRandomFarmCreepSpotSmall
   Local $x = Random(1,3,1)
   Send("{SHIFTDOWN}")
   Send("{ф down}")
   If $x = 1 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 21,430,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 2 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 27,418,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 3 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 36,430,1,1)
	  Sleep(Random(100,105,1))
   EndIf
   Send("{ф up}")
   Send("{SHIFTUP}")
   Sleep(random(5000,10000,1))
Endfunc

Func DRFCSS() ;DireRandomFarmCreepSpotSmall
   Local $x = Random(1,2,1)
   Send("{SHIFTDOWN}")
   Send("{ф down}")
   If $x = 1 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 85,420,1,1)
	  Sleep(Random(100,105,1))
   ElseIf $x = 2 Then
	  Sleep(random(100,150,1))
	  MouseClick("left", 69,429,1,1)
	  Sleep(Random(100,105,1))
   EndIf
   Send("{ф up}")
   Send("{SHIFTUP}")
   Sleep(random(5000,10000,1))
Endfunc

Func ChoosePushR(ByRef $SetOfParasha)
   Local $i = Random(1,3,1)
   If $i = 1 Then
	  $SetOfParasha[0] = 12
	  Return $SetOfParasha
   ElseIf $i = 2 Then
	  $SetOfParasha[0] = 14
	  Return $SetOfParasha
   ElseIf $i = 3 Then
	  $SetOfParasha[0] = 10
	  Return $SetOfParasha
   EndIf
   Sleep(random(1000,5000))
EndFunc

Func ChoosePushD(ByRef $SetOfParasha)
   Local $i = Random(1,3,1)
   If $i = 1 Then
	  $SetOfParasha[0] = 13
	  Return $SetOfParasha
   ElseIf $i = 2 Then
	  $SetOfParasha[0] = 15
	  Return $SetOfParasha
   ElseIf $i = 3 Then
	  $SetOfParasha[0] = 11
	  Return $SetOfParasha
   EndIf
   Sleep(random(1000,5000))
EndFunc

Func Main(ByRef $SetOfParasha)
   Switch $SetOfParasha[0]
	  Case 0 ;case bot radiant
		 For $i = 0 to 2 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 0 Then
			   Return $SetOfParasha
			EndIf
			;RBMRC()
			;$SetOfParasha = IsInGameR($SetOfParasha)
			;If $SetOfParasha[0] <> 0 Then
			;   Return $SetOfParasha
			;EndIf
			TPB()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 0 Then
			   Return $SetOfParasha
			EndIf
			VIBR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			   If $SetOfParasha[0] <> 0 Then
			   Return $SetOfParasha
			EndIf
			FBR() ;FeedimNaBote
			$SetOfParasha = IsInGameR($SetOfParasha)
			   If $SetOfParasha[0] <> 0 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 1 ;case bot dire
		 For $i =1 to 3 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 1 Then
			   Return $SetOfParasha
			EndIf
			;DBMRC()
			;$SetOfParasha = IsInGameR($SetOfParasha)
			;If $SetOfParasha[0] <> 1 Then
			;   Return $SetOfParasha
			;EndIf
			TPB()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 1 Then
			   Return $SetOfParasha
			EndIf
			VIBD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 1 Then
			   Return $SetOfParasha
			EndIf
			FBD() ;FeedimNaBote
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 1 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 2 ;case mid radiant
		 For $i = 2 to 4 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 2 Then
			   Return $SetOfParasha
			EndIf
			;RMMRC()
			;$SetOfParasha = IsInGameR($SetOfParasha)
			;If $SetOfParasha[0] <> 2 Then
			;   Return $SetOfParasha
			;EndIf
			TPM()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 2 Then
			   Return $SetOfParasha
			EndIf
			VIMR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 2 Then
			   Return $SetOfParasha
			EndIf
			FMR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 2 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 3 ;case mid dire
		 For $i =3 to 5 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 3 Then
			   Return $SetOfParasha
			EndIf
			;DMMRC()
			;$SetOfParasha = IsInGameR($SetOfParasha)
			;If $SetOfParasha[0] <> 3 Then
			;   Return $SetOfParasha
			;EndIf
			TPM()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 3 Then
			   Return $SetOfParasha
			EndIf
			VIMD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 3 Then
			   Return $SetOfParasha
			EndIf
			FMD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 3 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 4 ;case top radiant
		 For $i = 4 to 6 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 4 Then
			   Return $SetOfParasha
			EndIf
			;RTMRC()
			;$SetOfParasha = IsInGameR($SetOfParasha)
			;If $SetOfParasha[0] <> 4 Then
			;   Return $SetOfParasha
			;EndIf
			TPT()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 4 Then
			   Return $SetOfParasha
			EndIf
			VITR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 4 Then
			   Return $SetOfParasha
			EndIf
			FTR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 4 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 5 ;case top dire
		 For $i =5 to 7 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 5 Then
			   Return $SetOfParasha
			EndIf
			;DTMRC()
			;$SetOfParasha = IsInGameR($SetOfParasha)
			;If $SetOfParasha[0] <> 5 Then
			;   Return $SetOfParasha
			;EndIf
			TPT()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 5 Then
			   Return $SetOfParasha
			EndIf
			VITD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 5 Then
			   Return $SetOfParasha
			EndIf
			FTD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 5 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 6 ;case BigJungleRadiant
		 For $i =6 to 8 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 6 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 6 Then
			   Return $SetOfParasha
			EndIf
			VIBJR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 6 Then
			   Return $SetOfParasha
			EndIf
			RRFCSB()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 6 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 7 ;case BigJungleDire
		 For $i =7 to 9 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 7 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 7 Then
			   Return $SetOfParasha
			EndIf
			VIBJD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 7 Then
			   Return $SetOfParasha
			EndIf
			DRFCSB()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 7 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 8 ;case SmallJungleRadiant
		 For $i =8 to 10 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 8 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 8 Then
			   Return $SetOfParasha
			EndIf
			VISJR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 8 Then
			   Return $SetOfParasha
			EndIf
			RRFCSS()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 8 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 9 ;case SmallJungleDire
		 For $i =8 to 10 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 9 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 9 Then
			   Return $SetOfParasha
			EndIf
			VISJD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 9 Then
			   Return $SetOfParasha
			EndIf
			RRFCSS()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 9 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 10 ;case MidPushRadiant
		 For $i = 8 to 10 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 10 Then
			   Return $SetOfParasha
			EndIf
			MPR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 10 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 11 ;case MidPushDire
		 For $i = 9 to 11 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 11 Then
			   Return $SetOfParasha
			EndIf
			MPD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 11 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 12 ;case BotPushRadiant
		 For $i = 9 to 11 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 12 Then
			   Return $SetOfParasha
			EndIf
			BPR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 12 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 13 ;case BotPushDire
		 For $i = 10 to 12 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 13 Then
			   Return $SetOfParasha
			EndIf
			BPD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 13 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 14 ;case TopPushRadiant
		 For $i = 12 to 14 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 14 Then
			   Return $SetOfParasha
			EndIf
			TPR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 14 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 15 ;case TopPushDire
		 For $i = 12 to 14 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 15 Then
			   Return $SetOfParasha
			EndIf
			TPD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 15 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 16 ;case BigJungleDire
		 For $i =7 to 9 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 16 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 16 Then
			   Return $SetOfParasha
			EndIf
			VIBJD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 16 Then
			   Return $SetOfParasha
			EndIf
			DRFCSB()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 16 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 17 ;case BigJungleRadiant
		 For $i =6 to 8 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 17 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 17 Then
			   Return $SetOfParasha
			EndIf
			VIBJR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 17 Then
			   Return $SetOfParasha
			EndIf
			RRFCSB()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 17 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 18 ;case SmallJungleDire
		 For $i =8 to 10 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 18 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 18 Then
			   Return $SetOfParasha
			EndIf
			VISJD()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 18 Then
			   Return $SetOfParasha
			EndIf
			RRFCSS()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 18 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 19 ;case SmallJungleRadiant
		 For $i =8 to 10 Step 0
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 19 Then
			   Return $SetOfParasha
			EndIf
			ChooseTp()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 19 Then
			   Return $SetOfParasha
			EndIf
			VISJR()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 19 Then
			   Return $SetOfParasha
			EndIf
			RRFCSS()
			$SetOfParasha = IsInGameR($SetOfParasha)
			If $SetOfParasha[0] <> 19 Then
			   Return $SetOfParasha
			EndIf
		 Next
	  Case 666
		 For $i =0 to 666 Step 0
			SFB()
			Sleep(2000)
		 If not(PixelGetColor(560,465) = 0xF4D461) Then
			Sleep(4000)
			SFB()
			If not(PixelGetColor(560,465) = 0xF4D461) Then
			   Sleep(6000)
			   SFB()
			   If not(PixelGetColor(560,465) = 0xF4D461) Then
				  Sleep(10000)
				  SFB()
				  If not(PixelGetColor(560,465) = 0xF4D461) Then
					 Return $SetOfParasha
				  EndIf
			   EndIf
			EndIf
		 EndIf
		 Next
   EndSwitch
EndFunc

While(1)
   If $GamecountDEF <> $Gamecount Then
	  $SetOfParasha = Start($SetOfParasha)
	 ;MsgBox($MB_SYSTEMMODAL, "The value  ", TimerDiff($SetOfParasha[2]))
	  $GamecountDEF +=1
   EndIf
   Sleep(3000)
   $SetOfParasha = TTF($SetOfParasha)
   If $SetOfParasha[3] = 1 Then
	  If Mod($SetOfParasha[0] +2,2) = 0 Then
		 ChoosePushR($SetOfParasha)
		 If not(PixelGetColor(560,465) = 0xF4D461) Then
			Sleep(2000)
			If not(PixelGetColor(560,465) = 0xF4D461) Then
			   Sleep(2000)
			   If not(PixelGetColor(560,465) = 0xF4D461) Then
				  Sleep(2000)
				  If not(PixelGetColor(560,465) = 0xF4D461) Then
					 $SetOfParasha[3] = 0
					 $SetOfParasha[0] = 666
				  EndIf
			   EndIf
			EndIf
		 EndIf
	  ElseIf Mod($SetOfParasha[0] +2,2) <> 0 Then
		 ChoosePushD($SetOfParasha)
		 If not(PixelGetColor(560,465) = 0xF4D461) Then
			Sleep(2000)
			If not(PixelGetColor(560,465) = 0xF4D461) Then
			   Sleep(2000)
			   If not(PixelGetColor(560,465) = 0xF4D461) Then
				  Sleep(2000)
				  If not(PixelGetColor(560,465) = 0xF4D461) Then
					 $SetOfParasha[3] = 0
					 $SetOfParasha[0] = 666
				  EndIf
			   EndIf
			EndIf
		 EndIf
	  EndIf
   EndIf
If $SetOfParasha[0] =666 Then
	  While (1)
		 Sleep(5000)
		 If not(PixelGetColor(560,465) = 0xF4D461) Then
			Sleep(2000)
			If not(PixelGetColor(560,465) = 0xF4D461) Then
			   Sleep(2000)
			   If not(PixelGetColor(560,465) = 0xF4D461) Then
				  Sleep(2000)
				  If not(PixelGetColor(560,465) = 0xF4D461) Then
					 $Gamecount +=1
					 ExitLoop
				  EndIf
			   EndIf
			EndIf
		 EndIf
		 $SetOfParasha = Main($SetOfParasha)
	  WEnd
EndIf
   If $GamecountDEF <> $Gamecount Then
	  $SetOfParasha = Start($SetOfParasha)
	 ;MsgBox($MB_SYSTEMMODAL, "The value  ", TimerDiff($SetOfParasha[2]))
	  $GamecountDEF +=1
   EndIf
   Sleep(100)
   $SetOfParasha = Main($SetOfParasha)
WEnd



















