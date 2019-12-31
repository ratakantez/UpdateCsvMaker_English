
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Variable
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================
;~ Func _GuiCtrlMakeTrans($iCtrlID, $iTrans = 255)

;~ 	Local $pHwnd, $nHwnd, $aPos, $a

;~ 	$hWnd = GUICtrlGetHandle($iCtrlID) ;Get the control handle
;~ 	If $hWnd = 0 Then Return SetError(1, 1, 0)
;~ 	$pHwnd = DllCall("User32.dll", "hwnd", "GetParent", "hwnd", $hWnd) ;Get the parent Gui Handle
;~ 	If $pHwnd[0] = 0 Then Return SetError(1, 2, 0)
;~ 	$aPos = ControlGetPos($pHwnd[0], "", $hWnd) ;Get the current pos of the control
;~ 	If @error Then Return SetError(1, 3, 0)
;~ 	$nHwnd = GUICreate("", $aPos[2], $aPos[3], $aPos[0], $aPos[1], 0x80000000, 0x00080000 + 0x00000040, $pHwnd[0]) ;greate a gui in the position of the control
;~ 	If $nHwnd = 0 Then Return SetError(1, 4, 0)
;~ 	$a = DllCall("User32.dll", "hwnd", "SetParent", "hwnd", $hWnd, "hwnd", $nHwnd) ;change the parent of the control to the new gui
;~ 	If $a[0] = 0 Then Return SetError(1, 5, 0)
;~ 	If Not ControlMove($nHwnd, '', $hWnd, 0, 0) Then Return SetError(1, 6, -1) ;Move the control to 0,0 of the newly created child gui
;~ 	GUISetState(@SW_SHOW, $nHwnd) ;show the new child gui
;~ 	WinSetTrans($nHwnd, "", $iTrans) ;set the transparency
;~ 	If @error Then Return SetError(1, 7, 0)
;~ 	GUISwitch($pHwnd[0]) ;switch back to the parent Gui

;~ 	Return $nHwnd ;Return the handle for the new Child gui

;~ EndFunc   ;==>_GuiCtrlMakeTrans


Func _MakeGui()

	$h_hGUI_MakeCsv = GUICreate($Program_Name & $Program_Version, 1026, 640, @DesktopWidth/2-1026/2, @DesktopHeight/2-640/2, BitAND($WS_POPUP, $WS_EX_CONTROLPARENT))
	GUISetBkColor(0xFFFF99)


	$PicWait = GUICtrlCreatePic(@ScriptDir & "\USE\wait.bmp", 152 + 3, 9 + 3, 619, 501, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState($PicWait, $GUI_HIDE)

	$AttackSide = GUICtrlCreateGroup("Attack Side", 4, 5, 300, 256)
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($AttackSide), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 10, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
	$PicSideBarbar = GUICtrlCreatePic(@ScriptDir & "\USE\sidebarbar.bmp", 60, 22, 147, 197)
	GUICtrlSetState(-1, $GUI_DISABLE)


	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$info_pic = GUICtrlCreatePic(@ScriptDir & "\USE\info.bmp", 327, 12, 500, 500, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_DISABLE)
	$Start = GUICtrlCreateButton("Start", 8 + 12, 455, 120, 27)
	GUICtrlSetFont(-1, 11, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(-1, 0x008080)


	$Exit = GUICtrlCreateButton("", 8 + 12, 510, 120, 60, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
;~ GUICtrlSetFont(-1, 11, 800, 0, "Georgia")
;~ GUICtrlSetColor(-1, 0xC0C0C0)
;~ GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetImage($Exit, @ScriptDir & "\USE\exit.bmp", 0)

	$lblFile = GUICtrlCreateLabel("File : ", 6, 430, 35, -1)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0x000080)
	$FileInput = GUICtrlCreateInput("NoName_", 45, 427, 105, 23)
	GUICtrlSetTip(-1, "You can write a specific name for your CSV File")


;~ $Reset = GUICtrlCreateButton("Reset", 155+12, 415, 120, 27)
;~ GUICtrlSetFont(-1, 11, 800, 0, "Georgia")
;~ GUICtrlSetColor(-1, 0xC0C0C0)
;~ GUICtrlSetBkColor(-1, 0xFF0000)
	$AttackSide2 = GUICtrlCreateGroup("Attack Side", 4, 5, 145, 256)
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($AttackSide2), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 10, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
	GUICtrlSetState($AttackSide2, $GUI_HIDE)


	$PicInferno = GUICtrlCreatePic(@ScriptDir & "\USE\inferno.bmp", 10, 35 - 12, 23, 25)
	GUICtrlSetTip(-1, "Inferno Tower")
	$infernoPoint = GUICtrlCreateInput("0", 35, 36 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Inferno Tower Side Point")
	GUICtrlSetLimit(-1, 2)
	$PicAir = GUICtrlCreatePic(@ScriptDir & "\USE\air.bmp", 10, 65 - 12, 23, 25)
	GUICtrlSetTip(-1, "Air Defense")
	$airpoint = GUICtrlCreateInput("0", 35, 66 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Air Defense Point")
	GUICtrlSetLimit(-1, 2)

	$PicEagle = GUICtrlCreatePic(@ScriptDir & "\USE\eagle.bmp", 10, 95 - 12, 23, 25)
	GUICtrlSetTip(-1, "Eagle")
	$eaglepoint = GUICtrlCreateInput("0", 35, 96 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Eagle Point")
	GUICtrlSetLimit(-1, 2)

	$PicTH = GUICtrlCreatePic(@ScriptDir & "\USE\TH.bmp", 10, 125 - 12, 23, 25)
	GUICtrlSetTip(-1, "TownHall")
	$THPoint = GUICtrlCreateInput("0", 35, 126 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "TH Point")
	GUICtrlSetLimit(-1, 2)

	$PicMortar = GUICtrlCreatePic(@ScriptDir & "\USE\Mortar.bmp", 10, 153 - 12, 23, 25)
	GUICtrlSetTip(-1, "Mortar")
	$MortarPoint = GUICtrlCreateInput("0", 35, 156 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Mortar Point")
	GUICtrlSetLimit(-1, 2)

	$PicXbow = GUICtrlCreatePic(@ScriptDir & "\USE\xbow.bmp", 10, 182 - 12, 23, 25)
	GUICtrlSetTip(-1, "X-Bow")
	$XbowpointPoint = GUICtrlCreateInput("0", 35, 186 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "X-Bow Point")
	GUICtrlSetLimit(-1, 2)

	$PicWTower = GUICtrlCreatePic(@ScriptDir & "\USE\wizz.bmp", 10, 212 - 12, 23, 25)
	GUICtrlSetTip(-1, "Wizzard Tower")
	$WTowerPoint = GUICtrlCreateInput("0", 35, 214 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Wizzard Tower Point")
	GUICtrlSetLimit(-1, 2)

	$PicScatter = GUICtrlCreatePic(@ScriptDir & "\USE\scattershot.bmp", 10, 242 - 12, 23, 25)
	GUICtrlSetTip(-1, "Scatter Shot")
	$ScatterShotPoint = GUICtrlCreateInput("0", 35, 244 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Scatter Shot Point")
	GUICtrlSetLimit(-1, 2)

	$PicGoldStorage = GUICtrlCreatePic(@ScriptDir & "\USE\GoldStorage.bmp", 10 + 70 + 130, 35 - 12, 23, 25)
	GUICtrlSetTip(-1, "Gold Storage")
	$GoldStoragePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 36 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Gold Storage Point")
	GUICtrlSetLimit(-1, 2)

	$PicElixirStorage = GUICtrlCreatePic(@ScriptDir & "\USE\ElixirStorage.bmp", 10 + 70 + 130, 65 - 12, 23, 25)
	GUICtrlSetTip(-1, "Elixir Storage")
	$ElixirStoragePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 66 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Elixir Storage Point")
	GUICtrlSetLimit(-1, 2)

	$PicDarkElixirStorage = GUICtrlCreatePic(@ScriptDir & "\USE\DarkElixir.bmp", 10 + 70 + 130, 95 - 12, 23, 25)
	GUICtrlSetTip(-1, "Dark Elixir Storage")
	$DarkElixirStoragePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 96 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Dark Elixir Storage Point")
	GUICtrlSetLimit(-1, 2)

	$PicMine = GUICtrlCreatePic(@ScriptDir & "\USE\Mine.bmp", 10 + 70 + 130, 125 - 12, 23, 25)
	GUICtrlSetTip(-1, "Mine")
	$MinePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 126 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Mine Point")
	GUICtrlSetLimit(-1, 2)

	$PicCollector = GUICtrlCreatePic(@ScriptDir & "\USE\collector.bmp", 10 + 70 + 130, 153 - 12, 23, 25)
	GUICtrlSetTip(-1, "Collector")
	$CollectorPoint = GUICtrlCreateInput("0", 35 + 70 + 130, 156 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Colelctor Point")
	GUICtrlSetLimit(-1, 2)

	$PicDrill = GUICtrlCreatePic(@ScriptDir & "\USE\Drill.bmp", 10 + 70 + 130, 182 - 12, 23, 25)
	GUICtrlSetTip(-1, "Drill")
	$DrillPoint = GUICtrlCreateInput("0", 35 + 70 + 130, 186 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Drill Point")
	GUICtrlSetLimit(-1, 2)

	$ForcedSidePoint = GUICtrlCreateCombo("", 35 + 35 + 140, 214 - 9, 75, 29, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_DROPDOWNLIST))
	GUICtrlSetFont(-1, 6.5, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	GUICtrlSetData($ForcedSidePoint, "NONE|TOP LEFT|TOP RIGHT|BOTTOM LEFT|BOTTOM RIGHT|RANDOM", "NONE")








	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$OpenTrain = GUICtrlCreateButton("", 168, 272, 135, 148, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetImage($OpenTrain, @ScriptDir & "\USE\think_barbarian.bmp", 0)

;~ GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
;~ GUICtrlSetColor(-1, 0x000080)
;~ GUICtrlSetBkColor(-1, 0x009999)

	$Note = GUICtrlCreateEdit("", 4, 272, 160, 150, BitOR($ES_AUTOVSCROLL, $ES_AUTOHSCROLL, $ES_WANTRETURN))
	GUICtrlSetData(-1, "Author: " & @UserName & " - ver. 1.0" & @CRLF & @CRLF & "Troops: " & @CRLF & "Spells: " & @CRLF & "CC: " & @CRLF & "Info..... ")
	GUICtrlSetColor(-1, 0x800000)
	GUICtrlSetBkColor(-1, 0xD7E4F2)
	GUICtrlSetTip(-1, "You can write a description for your CSV File" & @CRLF & "Such as Author Name,Army and CC info.. ")

	$troops_pic2 = GUICtrlCreatePic(@ScriptDir & "\USE\SPELL_last.bmp", 152 + 3, 9 + 3, 619, 501, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState($troops_pic2, $GUI_DISABLE)
	GUICtrlSetState($troops_pic2, $GUI_HIDE)





	$CMBTroops_Name = GUICtrlCreateCombo("", 790, 20, 133, 25, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_SIMPLE, $WS_HSCROLL, $WS_CLIPSIBLINGS))
	GUICtrlSetState(-1, $GUI_HIDE)


	GUICtrlSetData($CMBTroops_Name, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas|Baby Dragons|Miners|E-Dragons|Yeti|Minions|Hog Riders|Valkyries|Golems|Witches|Lava Hounds|Bowlers|Ice Golems|Light Spells|Heal Spells|Rage Spells|Jump Spells|Freeze Spells|Clone Spells|Poison Spells|Earthquake Spells|Haste Spells|Skeleton Spells|Bat Spells|Wall Wrecker|Battle Blimp|Stone Slamer|Siege Barrack|King|Queen|Warden|Royal Champion|Castle", "Barbarians")

	$LOG = _GUICtrlRichEdit_Create($h_hGUI_MakeCsv, "CSV WRITING IS STARTING" & @CRLF, 156, 513, 670, 100, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, $ES_UPPERCASE, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_NUMBER, 0x200), $WS_EX_STATICEDGE)
	GUICtrlSetState($LOG, $GUI_HIDE)
	$troops_pic = GUICtrlCreatePic(@ScriptDir & "\USE\troops_LAST.bmp", 152 + 3, 9 + 3, 619, 501, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState($troops_pic, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)

	$SaveAndExit = GUICtrlCreateButton ("",850,530,120, 60, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetImage($SaveAndExit, @ScriptDir & "\USE\saveandexit.bmp", 0)


	$x = 790
	$y = 65


	$grpfordrop = GUICtrlCreateGroup("Drop Options", $x-5, $y-58, 233, 120)
	GUICtrlSetState(-1, $GUI_HIDE)
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($grpfordrop), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
    $AddRandomXandY = GUICtrlCreateCheckbox("Add Random Point X :", $x, $y-20, -1, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)

	$txtRandomX = GUICtrlCreateInput("0", $x+125, $y+2-20, 20, 23)
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$lblRandomXY1 = GUICtrlCreateLabel("and Y :", $x+150, $y+7-20, -1, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
    $txtRandomY = GUICtrlCreateInput("0", $x+188, $y+2-20, 20, 23)
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)


    $y=$y+30
	$Sleep = GUICtrlCreateCheckbox("Sleep", $x, $y, -1, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)

	GUICtrlSetTip(-1, "Bot sleep after dropping xxx milisecond (s) between your two input randomly (1000ms = 1 second)")

	$SleepInput1 = GUICtrlCreateInput("100", $x+47, $y+2, 36, 23,BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Bot sleep after dropping xxx milisecond (s) between your two input randomly (1000ms = 1 second)")
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$lblSleep = GUICtrlCreateLabel("-", $x+85, $y+7, 15, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$SleepInput2 = GUICtrlCreateInput("120", $x+90, $y+2, 36, 23, BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetTip(-1, "Bot sleep after dropping xxx milisecond (s) between your two input randomly (1000ms = 1 second)")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$lblSleep2 = GUICtrlCreateLabel("ms after dropping", $x+128, $y+7, 90, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	$x=790
	$y=140
	$grpforwait = GUICtrlCreateGroup("Add Wait to CSV", $x-5, $y-12, 233, 70)
	GUICtrlSetState(-1, $GUI_HIDE)
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($grpforwait), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)

	$CheckWait = GUICtrlCreateCheckbox("Wait", $x, $y, -1, 27)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetTip(-1, "Bot wait with WAIT command xxx milisecond (s) between your two input randomly" &@CRLF& " with special break that you set after dropping in CSV(1000ms = 1 second)")
	$WaitInput1 = GUICtrlCreateInput("0", $x+47, $y+2, 36, 23, BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "If your both inputs are same bot wait only the time that you set." & @CRLF & "If your imputs are different bot will get a random number between your inputs.")
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$lblWait = GUICtrlCreateLabel("-", $x+85, $y+7, 15, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$WaitInput2 = GUICtrlCreateInput("0", $x+90, $y+2, 36, 23, BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetTip(-1, "If your both inputs are same bot wait only the time that you set." & @CRLF & "If your imputs are different bot will get a random number between your inputs.")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$lblWait2 = GUICtrlCreateLabel(" ms. Additionally,", $x+128, $y+7, 85, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
    $CMBWaitBreakCommand = GUICtrlCreateCombo("" , $x , $y+30 , 225, 25, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_SIMPLE, $WS_HSCROLL))
	GUICtrlSetData($CMBWaitBreakCommand, "Don't break the time, keep waiting|If TH is destroyed, Go On|If Siege is destroyed, Go On|If Both TH and Siege are Destroyed, Go on|If TH or Siege is Destroyed, Go on|If King is activated, Go on|If Queen is Activated, Go on|If Warden is activated, Go on|If Royal Champion is activated, Go on|If Both King and Queen are activated, Go on|If King or Queen is activated, Go On", "Don't break the time, keep waiting")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$InfoAfterStart = GUICtrlCreateButton("", 950, 200, 52, 52 , BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetImage($InfoAfterStart, @ScriptDir & "\USE\info2.bmp", 0)
	GUICtrlSetState(-1, $GUI_HIDE)


	$AddCSV = GUICtrlCreateButton("ADD CSV", 790, 200, 60, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(-1, 0x009999)

	$Undo = GUICtrlCreateButton("Undo", 861, 200, 60, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0xC0C0C0)
	GUICtrlSetBkColor(-1, 0xFF0000)

	$x = 790
	$y = 280

	$TextUsedArmyEnter = GUICtrlCreateLabel("USED        |TOTAL  |SIZE   |", $x, $y-42, 250, 300)
	 GUICtrlSetState(-1, $GUI_HIDE)
	  GUICtrlSetFont(-1, 8, $FW_BOLD, 4, "Consolas", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	$TextUsedArmy = GUICtrlCreateLabel("" , $x, $y-30, 250, 285)
	 GUICtrlSetState(-1, $GUI_HIDE)
	  GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Consolas", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	$GrpFORbuildings = GUICtrlCreateGroup("", 612, 14, 153, 107)
	GUICtrlSetState(-1, $GUI_HIDE)

	$RadioWall1 = GUICtrlCreateRadio("", 630, 62, 10, 10)
	GUICtrlSetState(-1, $GUI_HIDE)
    GUICtrlSetTip(-1, "Bot will drop your spell to line of first wall after Reline")

	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetBkColor(-1, 0xd49d63)
	$RadioWall2 = GUICtrlCreateRadio("", 650, 62, 10, 10)
    GUICtrlSetTip(-1, "Bot will drop your spell to line of second wall after Reline")
	GUICtrlSetState(-1, $GUI_HIDE)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetBkColor(-1, 0xd49d63)
	$RadioEagle = GUICtrlCreateRadio("", 690, 62, 10, 10)
    GUICtrlSetTip(-1, "Bot will drop your spell to Eagle Building from your attack side that you set at first begining")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetBkColor(-1, 0xd49d63)
	;GUICtrlSetCursor (-1, 0)
	$RadioInferno = GUICtrlCreateRadio("", 735, 62, 10, 10)
    GUICtrlSetTip(-1, "Bot will drop your spell to nextest Inferno Building from your attack side that you set at first begining")
	GUICtrlSetState(-1, $GUI_HIDE)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetBkColor(-1, 0xd49d63)
	$RadioXbow = GUICtrlCreateRadio("", 642, 110, 10, 10)
    GUICtrlSetTip(-1, "Bot will drop your spell to nextest X-Bow Building from your attack side that you set at first begining")
	GUICtrlSetBkColor(-1, 0xd49d63)
	GUICtrlSetState(-1, $GUI_HIDE)
	;GUICtrlSetCursor (-1, 0)
	$RadioScatterShot = GUICtrlCreateRadio("", 642-48, 62, 10, 10)
    GUICtrlSetTip(-1, "Bot will drop your spell to nextest ScatterShot Building from your attack side that you set at first begining")
	GUICtrlSetState(-1, $GUI_HIDE)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetBkColor(-1, 0xd49d63)
	$RadioWizzTower = GUICtrlCreateRadio("", 692, 110, 10, 10)
    GUICtrlSetTip(-1, "Bot will drop your spell to nextest Wizard Tower Building from your attack side that you set at first begining")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetBkColor(-1, 0xd49d63)
	;GUICtrlSetCursor (-1, 0)
	$RadioAirDefense = GUICtrlCreateRadio("", 735, 110, 10, 10)
	GUICtrlSetState(-1, $GUI_HIDE)
    GUICtrlSetTip(-1, "Bot will drop your spell to nextest AirDefense Building from your attack side that you set at first begining")
	GUICtrlSetBkColor(-1, 0xd49d63)
	;GUICtrlSetCursor (-1, 0)
	$RadioTH = GUICtrlCreateRadio("", 633, 460, 10, 10)
	GUICtrlSetState(-1, $GUI_HIDE)
    GUICtrlSetTip(-1, "Bot will drop your spell to TownHall Building from your attack side that you set at first begining")
	GUICtrlSetBkColor(-1, 0xd48153)
	;GUICtrlSetCursor (-1, 0)
	$RadioMortar = GUICtrlCreateRadio("", 694, 460, 10, 10)
	GUICtrlSetState(-1, $GUI_HIDE)
    GUICtrlSetTip(-1, "Bot will drop your spell to nextest Mortar Building from your attack side that you set at first begining")
	GUICtrlSetBkColor(-1, 0xd48153)
	;GUICtrlSetCursor (-1, 0)
	$CheckBuilding = GUICtrlCreateCheckbox("Drop Spell On Building", 790, 70, 170, 25)
    GUICtrlSetTip(-1, "Bot will drop your spell to Buildings that is next to your set side. Please choose one building on the map")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 4, "Arial")
	GUICtrlSetColor(-1, 0x800000)


	GUICtrlCreateGroup("", -99, -99, 1, 1)



	$x = 454
	$y = 58
	$a10 = GUICtrlCreateButton("10", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$a9 = GUICtrlCreateButton("9", $x - 14, $y + 11, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	$a8 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a7 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a6 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a5 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a4 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a3 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a2 = GUICtrlCreateButton("2", $x - 112, $y + 75, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$a1 = GUICtrlCreateButton("1", $x - 127, $y + 86, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$x = 312
	$y = 160
	$b1 = GUICtrlCreateButton("1", $x, $y-1, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$b2 = GUICtrlCreateButton("2", $x - 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	$b3 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b4 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b5 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b6 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b7 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b8 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b9 = GUICtrlCreateButton("9", $x - 112, $y + 75, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$b10 = GUICtrlCreateButton("10", $x - 127, $y + 86, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$x = 183
	$y = 262
	$c10 = GUICtrlCreateButton("10", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c9 = GUICtrlCreateButton("9", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c8 = GUICtrlCreateButton("8", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c7 = GUICtrlCreateButton("7", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c6 = GUICtrlCreateButton("6", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c5 = GUICtrlCreateButton("5", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c4 = GUICtrlCreateButton("4", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c3 = GUICtrlCreateButton("3", $x + 99, $y + 69, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c2 = GUICtrlCreateButton("2", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$c1 = GUICtrlCreateButton("1", $x + 123, $y + 85, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)


	$x = 322
	$y = 361
	$d1 = GUICtrlCreateButton("1", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d2 = GUICtrlCreateButton("2", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d3 = GUICtrlCreateButton("3", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d4 = GUICtrlCreateButton("4", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d5 = GUICtrlCreateButton("5", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d6 = GUICtrlCreateButton("6", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d7 = GUICtrlCreateButton("7", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d8 = GUICtrlCreateButton("8", $x + 99, $y + 69, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d9 = GUICtrlCreateButton("9", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$d10 = GUICtrlCreateButton("10", $x + 123, $y + 85, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$x = 593
	$y = 359
	$e1 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$e2 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	$e3 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e4 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e5 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e6 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e7 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e8 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e9 = GUICtrlCreateButton("9", $x - 112, $y + 75, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$e10 = GUICtrlCreateButton("10", $x - 127, $y + 86, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$x = 741
	$y = 255
	$f10 = GUICtrlCreateButton("10", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$f9 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	$f8 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f7 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f6 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f5 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f4 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f3 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f2 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$f1 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$x = 608
	$y = 152
	$g1 = GUICtrlCreateButton("1", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g2 = GUICtrlCreateButton("2", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g3 = GUICtrlCreateButton("3", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g4 = GUICtrlCreateButton("4", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g5 = GUICtrlCreateButton("5", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g6 = GUICtrlCreateButton("6", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g7 = GUICtrlCreateButton("7", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g8 = GUICtrlCreateButton("8", $x + 98, $y + 68, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g9 = GUICtrlCreateButton("9", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$g10 = GUICtrlCreateButton("10", $x + 123, $y + 87, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)


	$x = 469
	$y = 58
	$h10 = GUICtrlCreateButton("10", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h9 = GUICtrlCreateButton("9", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h8 = GUICtrlCreateButton("8", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h7 = GUICtrlCreateButton("7", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h6 = GUICtrlCreateButton("6", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h5 = GUICtrlCreateButton("5", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h4 = GUICtrlCreateButton("4", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h3 = GUICtrlCreateButton("3", $x + 99, $y + 69, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h2 = GUICtrlCreateButton("2", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$h1 = GUICtrlCreateButton("1", $x + 123, $y + 85, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)






;~ _____________SPELLLL POINT_________________
;~ ________________e side Spells____________
	$x = 575 ;717  -142
	$y = 345 ;241   +104
	$Se1L1 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L1 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L1 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L1 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L1 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L1 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L1 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L1 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L1 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L1 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 706 - 142
	$y = 230 + 104
	$Se1L2 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L2 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L2 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L2 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L2 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L2 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L2 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L2 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L2 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L2 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 692 - 142 ;-11
	$y = 220 + 104 ;-11
	$Se1L3 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L3 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L3 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L3 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L3 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L3 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L3 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L3 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L3 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L3 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 677 - 142 ;-10
	$y = 211 + 104 ;-11
	$Se1L4 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L4 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L4 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L4 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L4 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L4 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L4 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L4 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L4 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L4 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 663 - 142 ;-10
	$y = 201 + 104 ;-11
	$Se1L5 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L5 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L5 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L5 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L5 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L5 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L5 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L5 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L5 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L5 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 650 - 142 ;-10
	$y = 192 + 104 ;-11
	$Se1L6 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L6 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L6 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L6 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L6 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L6 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L6 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L6 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L6 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L6 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 639 - 142 ;-10
	$y = 182 + 104 ;-11
	$Se1L7 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L7 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L7 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L7 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L7 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L7 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L7 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L7 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L7 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L7 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 626 - 142 ;-10
	$y = 175 + 104 ;-11
	$Se1L8 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L8 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L8 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L8 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L8 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L8 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L8 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L8 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L8 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L8 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 614 - 142 ;-8
	$y = 166 + 104 ;-9
	$Se1L9 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L9 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L9 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L9 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L9 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L9 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L9 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L9 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L9 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L9 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 601 - 142 ;-8
	$y = 156 + 104 ;-9
	$Se1L10 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L10 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L10 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L10 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L10 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L10 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L10 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L10 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L10 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L10 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 586 - 142 ;-12
	$y = 146 + 104 ;-9
	$Se1L11 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L11 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L11 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L11 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L11 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L11 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L11 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L11 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L11 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L11 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 572 - 142 ;-12
	$y = 138 + 104 ;-9
	$Se1L12 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L12 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L12 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L12 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L12 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L12 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L12 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L12 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L12 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L12 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 559 - 144 ;-12
	$y = 128 + 103 ;-9
	$Se1L13 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L13 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L13 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L13 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L13 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L13 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L13 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L13 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L13 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L13 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 544 - 142 ;-12
	$y = 117 + 104 ;-9
	$Se1L14 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L14 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L14 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L14 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L14 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L14 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L14 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L14 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L14 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L14 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 527 - 142 ;-12
	$y = 106 + 104 ;-9
	$Se1L15 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L15 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L15 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L15 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L15 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L15 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L15 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L15 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L15 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L15 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 513 - 142 ;-12
	$y = 97 + 104 ;-9
	$Se1L16 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L16 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L16 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L16 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L16 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L16 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L16 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L16 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L16 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L16 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 500 - 142 ;-12
	$y = 88 + 104 ;-9
	$Se1L17 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se2L17 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se3L17 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se4L17 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se5L17 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se6L17 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se7L17 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se8L17 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Se9L17 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
;~ $Se10L17 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)




;~ _____________f side Spells __________
	$x = 717
	$y = 241
;~ $Sf10L1 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf1L1 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf9L1 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L1 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L1 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L1 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L1 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L1 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L1 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L1 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 706
	$y = 230
;~ $Sf10L2 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L2 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L2 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L2 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L2 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L2 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L2 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L2 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L2 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L2 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 692 ;-11
	$y = 220 ;-11
;~ $Sf10L3 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L3 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L3 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L3 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L3 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L3 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L3 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L3 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L3 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L3 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 677 ;-10
	$y = 211 ;-11
;~ $Sf10L4 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L4 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L4 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L4 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L4 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L4 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L4 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L4 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L4 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L4 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 663 ;-10
	$y = 201 ;-11
;~ $Sf10L5 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L5 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L5 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L5 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L5 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L5 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L5 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L5 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L5 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L5 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 650 ;-10
	$y = 192 ;-11
;~ $Sf10L6 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L6 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L6 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L6 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L6 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L6 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L6 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L6 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L6 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L6 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 639 ;-10
	$y = 182 ;-11
;~ $Sf10L7 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L7 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L7 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L7 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L7 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L7 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L7 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L7 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L7 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L7 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 626 ;-10
	$y = 175 ;-11
;~ $Sf10L8 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L8 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L8 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L8 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L8 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L8 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L8 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L8 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L8 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L8 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 614 ;-8
	$y = 166 ;-9
;~ $Sf10L9 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L9 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L9 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L9 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L9 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L9 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L9 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L9 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L9 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L9 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 601 ;-8
	$y = 156 ;-9
;~ $Sf10L10 = GUICtrlCreateButton("1", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L10 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L10 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L10 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L10 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L10 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L10 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L10 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L10 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L10 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 586 ;-12
	$y = 146 ;-9
;~ $Sf10L11 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L11 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L11 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L11 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L11 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L11 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L11 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L11 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L11 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L11 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 572 ;-12
	$y = 138 ;-9
;~ $Sf10L12 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L12 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L12 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L12 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L12 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L12 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L12 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L12 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L12 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L12 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 559 ;-12
	$y = 128 ;-9
;~ $Sf10L13 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L13 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L13 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L13 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L13 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L13 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L13 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L13 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L13 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L13 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 544 ;-12
	$y = 117 ;-9
;~ $Sf10L14 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L14 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L14 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L14 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L14 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L14 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L14 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L14 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L14 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L14 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)


	$x = 527 ;-12
	$y = 106 ;-9
;~ $Sf10L15 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L15 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L15 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L15 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L15 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L15 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L15 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L15 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L15 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L15 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 513 ;-12
	$y = 97 ;-9
;~ $Sf10L16 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L16 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L16 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L16 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L16 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L16 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L16 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L16 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L16 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L16 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)

	$x = 500 ;-12
	$y = 88 ;-9
;~ $Sf10L17 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_DISABLE)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L17 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf8L17 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf7L17 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf6L17 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf5L17 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf4L17 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf3L17 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf2L17 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)
	$Sf1L17 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	;GUICtrlSetCursor (-1, 0)



	$x = 790
	$y = 170
	$aAddTile1 = GUICtrlCreateButton("+1 AddTile", $x + 70000, $y, 60, 22)
;~ GUICtrlSetState(-1,$GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$aAddTile2 = GUICtrlCreateButton("+2 AddTile", $x + 14000, $y, 60, 22)
;~ GUICtrlSetState(-1,$GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$aAddTile0 = GUICtrlCreateButton("+0 AddTile", $x + 100000, $y, 60, 22)
	GUICtrlSetState(-1, $GUI_HIDE)
;~ GUICtrlSetState(-1,$GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)

	$bAddTile1 = GUICtrlCreateButton("+1", 2000 + 253 - 30, 166 - 30, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$bAddTile2 = GUICtrlCreateButton("+2", 2000 + 253 - 60, 166 - 60, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$bAddTile0 = GUICtrlCreateButton("+0", 2000 + 253, 166, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)



	$cAddTile1 = GUICtrlCreateButton("+1", 2000 + 230 - 30, 325 + 30, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$cAddTile2 = GUICtrlCreateButton("+2", 2000 + 230 - 60, 325 + 60, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$cAddTile0 = GUICtrlCreateButton("+0", 2000 + 230, 325, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$dAddTile1 = GUICtrlCreateButton("+1", 2000 + 350 - 30, 405 + 30, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$dAddTile2 = GUICtrlCreateButton("+2", 2000 + 350 - 60, 405 + 60, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$dAddTile0 = GUICtrlCreateButton("+0", 2000 + 350, 405, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$eAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 + 30 + 150, 412 + 30 + 5, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$eAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 + 60 + 150, 412 + 60 + 5, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$eAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 + 150, 412 + 5, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$fAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 + 30 + 150 + 120, 412 + 30 + 5 - 85, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$fAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 + 60 + 150 + 120, 412 + 60 + 5 - 85, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$fAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 + 150 + 120, 412 + 5 - 85, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$gAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 + 30 + 150 + 120 + 30, 412 + 30 + 5 - 85 - 175 - 30, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$gAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 + 30 + 150 + 120 + 60, 412 + 30 + 5 - 85 - 175 - 60, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$gAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 + 30 + 150 + 120, 412 + 30 + 5 - 85 - 175, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	$hAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 + 155 + 30, 412 + 5 - 350 - 30, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$hAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 + 155 + 60, 412 + 5 - 350 - 60, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)
	$hAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 + 155, 412 + 5 - 350, 25, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	;GUICtrlSetCursor (-1, 0)

	GUISetState(@SW_SHOW)
	GUISetState(@SW_SHOW, $h_hGUI_MakeCsv)



EndFunc   ;==>_MakeGui



Func AfterStart()

	GUISetState(@SW_HIDE, $TrainGui)

	GUISetState(@SW_SHOW, $h_hGUI_MakeCsv)


	GUICtrlSetState($CheckBuilding, $GUI_DISABLE)

	GUICtrlSetState($PicSideBarbar, $GUI_HIDE)
	GUICtrlSetState($info_pic, $GUI_HIDE)
	GUICtrlSetState($AttackSide, $GUI_HIDE)
	GUICtrlSetState($AttackSide2, $GUI_SHOW)
	GUICtrlSetState($lblFile, $GUI_DISABLE)
	GUICtrlSetState($FileInput, $GUI_DISABLE)
	GUICtrlSetState($Start, $GUI_DISABLE)

	For $i = $PicInferno To $ScatterShotPoint
		GUICtrlSetState($i, $GUI_DISABLE)
	Next

	For $i = $PicGoldStorage To $ForcedSidePoint
		GUICtrlSetState($i, $GUI_HIDE)
	Next

	GUICtrlSetState($OpenTrain, $GUI_HIDE)
	GUICtrlSetState($Note, $GUI_HIDE)


	$PicGoldStorage2 = GUICtrlCreatePic(@ScriptDir & "\USE\GoldStorage.bmp", 10 + 70, 35 - 12, 23, 25)
	GUICtrlSetTip(-1, "Gold Storage")
	$GoldStoragePoint2 = GUICtrlCreateInput(GUICtrlRead($GoldStoragePoint), 35 + 70, 36 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Gold Storage Point")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$PicElixirStorage2 = GUICtrlCreatePic(@ScriptDir & "\USE\ElixirStorage.bmp", 10 + 70, 65 - 12, 23, 25)
	GUICtrlSetTip(-1, "Elixir Storage")
	$ElixirStoragePoint2 = GUICtrlCreateInput(GUICtrlRead($ElixirStoragePoint), 35 + 70, 66 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Elixir Storage Point")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$PicDarkElixirStorage2 = GUICtrlCreatePic(@ScriptDir & "\USE\DarkElixir.bmp", 10 + 70, 95 - 12, 23, 25)
	GUICtrlSetTip(-1, "Dark Elixir Storage")
	$DarkElixirStoragePoint2 = GUICtrlCreateInput(GUICtrlRead($DarkElixirStoragePoint), 35 + 70, 96 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Dark Elixir Storage Point")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$PicMine2 = GUICtrlCreatePic(@ScriptDir & "\USE\Mine.bmp", 10 + 70, 125 - 12, 23, 25)
	GUICtrlSetTip(-1, "Mine")
	$MinePoint2 = GUICtrlCreateInput(GUICtrlRead($MinePoint), 35 + 70, 126 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Mine Point")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$PicCollector2 = GUICtrlCreatePic(@ScriptDir & "\USE\collector.bmp", 10 + 70, 153 - 12, 23, 25)
	GUICtrlSetTip(-1, "Collector")
	$CollectorPoint2 = GUICtrlCreateInput(GUICtrlRead($CollectorPoint), 35 + 70, 156 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Colelctor Point")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$PicDrill2 = GUICtrlCreatePic(@ScriptDir & "\USE\Drill.bmp", 10 + 70, 182 - 12, 23, 25)
	GUICtrlSetTip(-1, "Drill")
	$DrillPoint2 = GUICtrlCreateInput(GUICtrlRead($DrillPoint), 35 + 70, 186 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Drill Point")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$ForcedSidePoint2 = GUICtrlCreateCombo(GUICtrlRead($ForcedSidePoint), 35 + 35, 214 - 9, 75, 29, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_DROPDOWNLIST))
	GUICtrlSetFont(-1, 6.5, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$Note2 = GUICtrlCreateEdit("", 4, 272, 150, 150, BitOR($ES_AUTOVSCROLL, $ES_AUTOHSCROLL, $ES_WANTRETURN))
	GUICtrlSetData(-1, GUICtrlRead($Note))
	GUICtrlSetColor(-1, 0x800000)
	GUICtrlSetBkColor(-1, 0xD7E4F2)
	GUICtrlSetState(-1, $GUI_DISABLE)



	For $i = $CMBTroops_Name To $Undo
		GUICtrlSetState($i, $GUI_SHOW)
	Next
		GUICtrlSetState($CheckBuilding, $GUI_SHOW)
		GUICtrlSetState($TextUsedArmyEnter, $GUI_SHOW)
		GUICtrlSetState($TextUsedArmy, $GUI_SHOW)
		GUICtrlSetState($SaveAndExit,$GUI_SHOW)
	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $aAddTile1 To $aAddTile0
		GUICtrlSetState($i, $GUI_SHOW)
	Next
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_SHOW)
	Next

	GUICtrlSetState($GrpFORbuildings, $GUI_HIDE)
	GUICtrlSetState($troops_pic2, $GUI_HIDE)
	GUICtrlSetState($Exit,$GUI_HIDE)
	HideBuildings()
	$g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\Cursor\Barbarian.cur')
	GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	OnAutoItExitRegister('OnAutoItExit')







EndFunc   ;==>AfterStart


Func HideBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_HIDE)

	Next
EndFunc   ;==>HideBuildings

Func ShowBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowBuildings

Func EnableBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_ENABLE)
	Next
EndFunc   ;==>EnableBuildings
Func DisableBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_DISABLE)
	Next
EndFunc   ;==>DisableBuildings
Func UncheckBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_UNCHECKED)
	Next
EndFunc   ;==>UncheckBuildings

Func HideAddTile()
	For $i = $aAddTile1 To $hAddTile0
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc   ;==>HideAddTile

Func ShowAddTile()
	For $i = $aAddTile1 To $hAddTile0
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowAddTile

Func HideSpellPoint()
	For $i = $Se1L1 To $Sf1L17
;~ 	  If GUICtrlRead($i) = $GUI_SHOW Then
		GUICtrlSetState($i, $GUI_HIDE)
;~ 	  EndIf
	Next



EndFunc   ;==>HideSpellPoint
Func ShowSpellPoint()
	For $i = $Se1L1 To $Sf1L17
;~ 	  If GUICtrlRead($i) = $GUI_HIDE Then
		GUICtrlSetState($i, $GUI_SHOW)
;~ 	  EndIf
	Next



EndFunc   ;==>ShowSpellPoint

Func HideArmyPoint()
   	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc

Func ShowArmyPoint()
   	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc
Func CountUsedTroops()
	If $LOGName = "Barbarian" Then
		$CountBarbarian = $CountBarbarian + 1
		$CountBarbarianSize = $CountBarbarian * $CounterTroop_TroopSize
   ElseIf $LOGName = "Archer" Then
		$CountArcher = $CountArcher + 1
		$CountArcherSize = $CountArcher * $CounterTroop_TroopSize
	ElseIf $LOGName = "Giant" Then
		$CountGiant = $CountGiant + 1
		$CountGiantSize = $CountGiant * $CounterTroop_TroopSize
	ElseIf $LOGName = "Goblin" Then
		$CountGoblin = $CountGoblin + 1
		$CountGoblinSize = $CountGoblin * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wall Breaker" Then
		$CountWallBreaker = $CountWallBreaker + 1
		$CountWallBreakerSize = $CountWallBreaker * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baloon" Then
		$CountBaloon = $CountBaloon + 1
		$CountBaloonSize = $CountBaloon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wizard" Then
		$CountWizard = $CountWizard + 1
		$CountWizardSize = $CountWizard * $CounterTroop_TroopSize
	ElseIf $LOGName = "Healer" Then
		$CountHealer = $CountHealer + 1
		$CountHealerSize = $CountHealer * $CounterTroop_TroopSize
	ElseIf $LOGName = "Dragon" Then
		$CountDragon = $CountDragon + 1
		$CountDragonSize = $CountDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "P.E.K.K.A" Then
		$CountPekka = $CountPekka + 1
		$CountPekkaSize = $CountPekka * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baby Dragon" Then
		$CountBabyDragon = $CountBabyDragon + 1
		$CountBabyDragonSize = $CountBabyDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Miner" Then
		$CountMiner = $CountMiner + 1
		$CountMinerSize = $CountMiner * $CounterTroop_TroopSize
	ElseIf $LOGName = "Electro Dragon" Then
		$CountElectroDragon = $CountElectroDragon + 1
		$CountElectroDragonSize = $CountElectroDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Yeti" Then
		$CountYeti = $CountYeti + 1
		$CountYetiSize = $CountYeti * $CounterTroop_TroopSize
	ElseIf $LOGName = "Minion" Then
		$CountMinion = $CountMinion + 1
		$CountMinionSize = $CountMinion * $CounterTroop_TroopSize
	ElseIf $LOGName = "Hog Rider" Then
		$CountHogRider = $CountHogRider + 1
		$CountHogRiderSize = $CountHogRider * $CounterTroop_TroopSize
	ElseIf $LOGName = "Valkyre" Then
		$CountValkyre = $CountValkyre + 1
		$CountValkyreSize = $CountValkyre * $CounterTroop_TroopSize
	ElseIf $LOGName = "Golem" Then
		$CountGolem = $CountGolem + 1
		$CountGolemSize = $CountGolem * $CounterTroop_TroopSize
	ElseIf $LOGName = "Witch" Then
		$CountWitch = $CountWitch + 1
		$CountWitchSize = $CountWitch * $CounterTroop_TroopSize
	ElseIf $LOGName = "Lava Hound" Then
		$CountLavaHound = $CountLavaHound + 1
		$CountLavaHoundSize = $CountLavaHound * $CounterTroop_TroopSize
	ElseIf $LOGName = "Bowler" Then
		$CountBowler = $CountBowler + 1
		$CountBowlerSize = $CountBowler * $CounterTroop_TroopSize
	ElseIf $LOGName = "Ice Golem" Then
		$CountIceGolem = $CountIceGolem + 1
		$CountIceGolemSize = $CountIceGolem * $CounterTroop_TroopSize
	ElseIf $TName = "LSpell     " Then
		$CountLSpell = $CountLSpell + 1
		$CountLSpellSize = $CountLSpell * $CounterTroop_SpellSize
	ElseIf $TName = "HSpell     " Then
		$CountHSpell = $CountHSpell + 1
		$CountHSpellSize = $CountHSpell * $CounterTroop_SpellSize
	ElseIf $TName = "RSpell     " Then
		$CountRSpell = $CountRSpell + 1
		$CountRSpellSize = $CountRSpell * $CounterTroop_SpellSize
	ElseIf $TName = "JSpell     " Then
		$CountJSpell = $CountJSpell + 1
		$CountJSpellSize = $CountJSpell * $CounterTroop_SpellSize
	ElseIf $TName = "FSpell     " Then
		$CountFSpell = $CountFSpell + 1
		$CountFSpellSize = $CountFSpell * $CounterTroop_SpellSize
	ElseIf $TName = "CSpell     " Then
		$CountCSpell = $CountCSpell + 1
		$CountCSpellSize = $CountCSpell * $CounterTroop_SpellSize
	ElseIf $TName = "PSpell     " Then
		$CountPSpell = $CountPSpell + 1
		$CountPSpellSize = $CountPSpell * $CounterTroop_SpellSize
	ElseIf $TName = "ESpell     " Then
		$CountESpell = $CountESpell + 1
		$CountESpellSize = $CountESpell * $CounterTroop_SpellSize
	ElseIf $TName = "HaSpell    " Then
		$CountHaSpell = $CountHaSpell + 1
		$CountHaSpellSize = $CountHaSpell * $CounterTroop_SpellSize
	ElseIf $TName = "SkSpell    " Then
		$CountSkSpell = $CountSkSpell + 1
		$CountSkSpellSize = $CountSkSpell * $CounterTroop_SpellSize
	ElseIf $TName = "BtSpell    " Then
		$CountBtSpell = $CountBtSpell + 1
		$CountBtSpellSize = $CountBtSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "King" Then
		$CountKing = $CountKing + 1
	ElseIf $LOGName = "Queen" Then
		$CountQueen = $CountQueen + 1
	ElseIf $LOGName = "Warden" Then
		$CountWarden = $CountWarden + 1
	ElseIf $LOGName = "Royal Champion" Then
		$CountRoyalChampion = $CountRoyalChampion + 1
	ElseIf $LOGName = "Wall Wrecker" Then
		$CountWW = $CountWW + 1
	ElseIf $LOGName = "Battle Blimp" Then
		$CountBB = $CountBB + 1
	ElseIf $LOGName = "Stone Slamer" Then
		$CountSS = $CountSS + 1
	ElseIf $LOGName = "Siege Barrack" Then
		$CountSB = $CountSB + 1
	ElseIf $TName = "Castle     " Then
		$CountCC = $CountCC + 1
	EndIf

	If $CountKing > 0 Then
		$CountUsedKingShow = "King             " & ChrW("8730") &@CRLF
	EndIf
	If $CountQueen > 0 Then
		$CountUsedQueenShow = "Queen            " & ChrW("8730") &@CRLF
	EndIf
	If $CountRoyalChampion > 0 Then
		$CountUsedRoyalChampionShow = "Royal Champion   " & ChrW("8730") &@CRLF
	EndIf
	If $CountWarden > 0 Then
		$CountUsedWardenShow = "Warden           " & ChrW("8730") &@CRLF
	EndIf
	If $CountWW > 0 Then
		$CountUsedWWShow = "Wall Wrecker     " & ChrW("8730") &@CRLF
	EndIf
	If $CountBB > 0 Then
		$CountUsedBBShow = "Battle Blimp     " & ChrW("8730") &@CRLF
	EndIf
	If $CountSS > 0 Then
		$CountUsedSSShow = "Stone Slamer     " & ChrW("8730") &@CRLF
	EndIf
	If $CountSB > 0 Then
		$CountUsedSBShow = "Siege Barrack    " & ChrW("8730") &@CRLF
	EndIf
	If $CountCC > 0 Then
		$CountUsedSSShow = "Clan Castle      " & ChrW("8730") &@CRLF
	EndIf

   $SumOfArmySizeCount =$CountBarbarianSize + $CountArcherSize + _
						$CountGiantSize + $CountGoblinSize + _
						$CountWallBreakerSize + $CountBaloonSize + _
						$CountWizardSize + $CountHealerSize + _
						$CountDragonSize + _
						$CountPekkaSize + $CountBabyDragonSize + _
						$CountMinerSize + $CountElectroDragonSize + $CountYetiSize + _
						$CountMinionSize + $CountHogRiderSize + _
						$CountValkyreSize + $CountGolemSize + _
						$CountWitchSize + $CountLavaHoundSize + _
						$CountBowlerSize + $CountIceGolemSize

   $SumOfArmySizeCountShow = "Your Used Army Size is " & String($SumOfArmySizeCount) & @CRLF

   $SumOfSpellSizeCount = $CountLSpellSize + $CountHSpellSize + _
						   $CountRSpellSize + $CountJSpellSize + _
						   $CountFSpellSize + $CountCSpellSize + _
						   $CountPSpellSize + $CountESpellSize + _
						   $CountHaSpellSize + $CountSkSpellSize + _
						   $CountBtSpellSize

   $SumOfSpellSizeCountShow = "Your Used Spell Size is " & String($SumOfSpellSizeCount)





	If $CountBarbarian > 0 Then
		$CountUsedBarbarianShow = "Barbarian   |      " & $CountBarbarian & "|"
		If $CountBarbarian >= 10 Then
			$CountUsedBarbarianShow = "Barbarian   |     " & $CountBarbarian & "|"
			If $CountBarbarian >= 100 Then
				$CountUsedBarbarianShow = "Barbarian   |    " & $CountBarbarian& "|"
			EndIf
		EndIf
	EndIf
	If $CountBarbarianSize > 0 Then
		$CountUsedBarbarianSizeShow = "      " & $CountBarbarianSize & "|" & @CRLF
		If $CountBarbarianSize >= 10 Then
			$CountUsedBarbarianSizeShow = "     " & $CountBarbarianSize & "|" & @CRLF
			If $CountBarbarianSize > 100 Then
				$CountUsedBarbarianSizeShow = "    " & $CountBarbarianSize & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountArcher > 0 Then
		$CountUsedArcherShow = "Archer      |      " & String($CountArcher)& "|"
		If $CountArcher >= 10 Then
			$CountUsedArcherShow = "Archer      |     " & String($CountArcher)& "|"
			If $CountArcher >= 100 Then
				$CountUsedArcherShow = "Archer      |    " & String($CountArcher)& "|"
			EndIf
		EndIf
	EndIf
	If $CountArcherSize > 0 Then
		$CountUsedArcherSizeShow = "      " & String($CountArcherSize) & "|" & @CRLF
		If $CountArcherSize >= 10 Then
			$CountUsedArcherSizeShow = "     " & String($CountArcherSize) & "|" & @CRLF
			If $CountArcherSize > 100 Then
				$CountUsedArcherSizeShow = "    " & String($CountArcherSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountGiant > 0 Then
		$CountUsedGiantShow = "Giant       |      " & String($CountGiant)& "|"
		If $CountGiant >= 10 Then
			$CountUsedGiantShow = "Giant       |     " & String($CountGiant)& "|"
			If $CountGiant >= 100 Then
				$CountUsedGiantShow = "Giant       |    " & String($CountGiant)& "|"
			EndIf
		EndIf
	EndIf
	If $CountGiantSize > 0 Then
		$CountUsedGiantSizeShow = "      " & String($CountGiantSize) & "|" & @CRLF
		If $CountGiantSize >= 10 Then
			$CountUsedGiantSizeShow = "     " & String($CountGiantSize) & "|" & @CRLF
			If $CountGiantSize > 100 Then
				$CountUsedGiantSizeShow = "    " & String($CountGiantSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountGoblin > 0 Then
		$CountUsedGoblinShow = "Goblin      |      " & String($CountGoblin)& "|"
		If $CountGoblin >= 10 Then
			$CountUsedGoblinShow = "Goblin      |     " & String($CountGoblin)& "|"
			If $CountGoblin >= 100 Then
				$CountUsedGoblinShow = "Goblin      |    " & String($CountGoblin)& "|"
			EndIf
		EndIf
	EndIf
	If $CountGoblinSize > 0 Then
		$CountUsedGoblinSizeShow = "      " & String($CountGoblinSize) & "|" & @CRLF
		If $CountGoblinSize >= 10 Then
			$CountUsedGoblinSizeShow = "     " & String($CountGoblinSize) & "|" & @CRLF
			If $CountGoblinSize > 100 Then
				$CountUsedGoblinSizeShow = "    " & String($CountGoblinSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountWallBreaker > 0 Then
		$CountUsedWallBreakerShow = "Wall Breaker|      " & String($CountWallBreaker)& "|"
		If $CountWallBreaker >= 10 Then
			$CountUsedWallBreakerShow = "Wall Breaker|     " & String($CountWallBreaker)& "|"
			If $CountWallBreaker >= 100 Then
				$CountUsedWallBreakerShow = "Wall Breaker|    " & String($CountWallBreaker)& "|"
			EndIf
		EndIf
	EndIf
	If $CountWallBreakerSize > 0 Then
		$CountUsedWallBreakerSizeShow = "      " & String($CountWallBreakerSize) & "|" & @CRLF
		If $CountWallBreakerSize >= 10 Then
			$CountUsedWallBreakerSizeShow = "     " & String($CountWallBreakerSize) & "|" & @CRLF
			If $CountWallBreakerSize > 100 Then
				$CountUsedWallBreakerSizeShow = "    " & String($CountWallBreakerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBaloon > 0 Then
		$CountUsedBaloonShow = "Balloon     |      " & String($CountBaloon)& "|"
		If $CountBaloon >= 10 Then
			$CountUsedBaloonShow = "Balloon     |     " & String($CountBaloon)& "|"
			If $CountBaloon >= 100 Then
				$CountUsedBaloonShow = "Balloon     |    " & String($CountBaloon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBaloonSize > 0 Then
		$CountUsedBaloonSizeShow = "      " & String($CountBaloonSize) & "|" & @CRLF
		If $CountBaloonSize >= 10 Then
			$CountUsedBaloonSizeShow = "     " & String($CountBaloonSize) & "|" & @CRLF
			If $CountBaloonSize > 100 Then
				$CountUsedBaloonSizeShow = "    " & String($CountBaloonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountWizard > 0 Then
		$CountUsedWizardShow = "Wizard      |      " & String($CountWizard)& "|"
		If $CountWizard >= 10 Then
			$CountUsedWizardShow = "Wizard      |     " & String($CountWizard)& "|"
			If $CountWizard >= 100 Then
				$CountUsedWizardShow = "Wizard      |    " & String($CountWizard)& "|"
			EndIf
		EndIf
	EndIf
	If $CountWizardSize > 0 Then
		$CountUsedWizardSizeShow = "      " & String($CountWizardSize) & "|" & @CRLF
		If $CountWizardSize >= 10 Then
			$CountUsedWizardSizeShow = "     " & String($CountWizardSize) & "|" & @CRLF
			If $CountWizardSize > 100 Then
				$CountUsedWizardSizeShow = "    " & String($CountWizardSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHealer > 0 Then
		$CountUsedHealerShow = "Healer      |      " & String($CountHealer)& "|"
		If $CountHealer >= 10 Then
			$CountUsedHealerShow = "Healer      |     " & String($CountHealer)& "|"
			If $CountHealer >= 100 Then
				$CountUsedHealerShow = "Healer      |    " & String($CountHealer)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHealerSize > 0 Then
		$CountUsedHealerSizeShow = "      " & String($CountHealerSize) & "|" & @CRLF
		If $CountHealerSize >= 10 Then
			$CountUsedHealerSizeShow = "     " & String($CountHealerSize) & "|" & @CRLF
			If $CountHealerSize > 100 Then
				$CountUsedHealerSizeShow = "    " & String($CountHealerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountDragon > 0 Then
		$CountUsedDragonShow = "Dragon      |      " & String($CountDragon)& "|"
		If $CountDragon >= 10 Then
			$CountUsedDragonShow = "Dragon      |     " & String($CountDragon)& "|"
			If $CountDragon >= 100 Then
				$CountUsedDragonShow = "Dragon      |    " & String($CountDragon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountDragonSize > 0 Then
		$CountUsedDragonSizeShow = "      " & String($CountDragonSize) & "|" & @CRLF
		If $CountDragonSize >= 10 Then
			$CountUsedDragonSizeShow = "     " & String($CountDragonSize) & "|" & @CRLF
			If $CountDragonSize > 100 Then
				$CountUsedDragonSizeShow = "    " & String($CountDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountPekka > 0 Then
		$CountUsedPekkaShow = "Pekka       |      " & String($CountPekka)& "|"
		If $CountPekka >= 10 Then
			$CountUsedPekkaShow = "Pekka       |     " & String($CountPekka)& "|"
			If $CountPekka >= 100 Then
				$CountUsedPekkaShow = "Pekka       |    " & String($CountPekka)& "|"
			EndIf
		EndIf
	EndIf
	If $CountPekkaSize > 0 Then
		$CountUsedPekkaSizeShow = "      " & String($CountPekkaSize) & "|" & @CRLF
		If $CountPekkaSize >= 10 Then
			$CountUsedPekkaSizeShow = "     " & String($CountPekkaSize) & "|" & @CRLF
			If $CountPekkaSize > 100 Then
				$CountUsedPekkaSizeShow = "    " & String($CountPekkaSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBabyDragon > 0 Then
		$CountUsedBabyDragonShow = "Baby Dragon |      " & String($CountBabyDragon)& "|"
		If $CountBabyDragon >= 10 Then
			$CountUsedBabyDragonShow = "Baby Dragon |     " & String($CountBabyDragon)& "|"
			If $CountBabyDragon >= 100 Then
				$CountUsedBabyDragonShow = "Baby Dragon |    " & String($CountBabyDragon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBabyDragonSize > 0 Then
		$CountUsedBabyDragonSizeShow = "      " & String($CountBabyDragonSize) & "|" & @CRLF
		If $CountBabyDragonSize >= 10 Then
			$CountUsedBabyDragonSizeShow = "     " & String($CountBabyDragonSize) & "|" & @CRLF
			If $CountBabyDragonSize > 100 Then
				$CountUsedBabyDragonSizeShow = "    " & String($CountBabyDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountMiner > 0 Then
		$CountUsedMinerShow = "Miner       |      " & String($CountMiner)& "|"
		If $CountMiner >= 10 Then
			$CountUsedMinerShow = "Miner       |     " & String($CountMiner)& "|"
			If $CountMiner >= 100 Then
				$CountUsedMinerShow = "Miner       |    " & String($CountMiner)& "|"
			EndIf
		EndIf
	EndIf
	If $CountMinerSize > 0 Then
		$CountUsedMinerSizeShow = "      " & String($CountMinerSize) & "|" & @CRLF
		If $CountMinerSize >= 10 Then
			$CountUsedMinerSizeShow = "     " & String($CountMinerSize) & "|" & @CRLF
			If $CountMinerSize > 100 Then
				$CountUsedMinerSizeShow = "    " & String($CountMinerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountElectroDragon > 0 Then
		$CountUsedElectroDragonShow = "Electro Drg.|      " & String($CountElectroDragon)& "|"
		If $CountElectroDragon >= 10 Then
			$CountUsedElectroDragonShow = "Electro Drg.|     " & String($CountElectroDragon)& "|"
			If $CountElectroDragon >= 100 Then
				$CountUsedElectroDragonShow = "Electro Drg.|    " & String($CountElectroDragon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountElectroDragonSize > 0 Then
		$CountUsedElectroDragonSizeShow = "      " & String($CountElectroDragonSize) & "|" & @CRLF
		If $CountElectroDragonSize >= 10 Then
			$CountUsedElectroDragonSizeShow = "     " & String($CountElectroDragonSize) & "|" & @CRLF
			If $CountElectroDragonSize > 100 Then
				$CountUsedElectroDragonSizeShow = "    " & String($CountElectroDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountYeti > 0 Then
		$CountUsedYetiShow = "Yeti        |      " & String($CountYeti)& "|"
		If $CountYeti >= 10 Then
			$CountUsedYetiShow = "Yeti        |     " & String($CountYeti)& "|"
			If $CountYeti >= 100 Then
				$CountUsedYetiShow = "Yeti        |    " & String($CountYeti)& "|"
			EndIf
		EndIf
	EndIf
	If $CountYetiSize > 0 Then
		$CountUsedYetiSizeShow = "      " & String($CountYetiSize) & "|" & @CRLF
		If $CountYetiSize >= 10 Then
			$CountUsedYetiSizeShow = "     " & String($CountYetiSize) & "|" & @CRLF
			If $CountYetiSize > 100 Then
				$CountUsedYetiSizeShow = "    " & String($CountYetiSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountMinion > 0 Then
		$CountUsedMinionShow = "Minion      |      " & String($CountMinion)& "|"
		If $CountMinion >= 10 Then
			$CountUsedMinionShow = "Minion      |     " & String($CountMinion)& "|"
			If $CountMinion >= 100 Then
				$CountUsedMinionShow = "Minion      |    " & String($CountMinion)& "|"
			EndIf
		EndIf
	EndIf
	If $CountMinionSize > 0 Then
		$CountUsedMinionSizeShow = "      " & String($CountMinionSize) & "|" & @CRLF
		If $CountMinionSize >= 10 Then
			$CountUsedMinionSizeShow = "     " & String($CountMinionSize) & "|" & @CRLF
			If $CountMinionSize > 100 Then
				$CountUsedMinionSizeShow = "    " & String($CountMinionSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHogRider > 0 Then
		$CountUsedHogRiderShow = "Hog Rider   |      " & String($CountHogRider)& "|"
		If $CountHogRider >= 10 Then
			$CountUsedHogRiderShow = "Hog Rider   |     " & String($CountHogRider)& "|"
			If $CountHogRider >= 100 Then
				$CountUsedHogRiderShow = "Hog Rider   |    " & String($CountHogRider)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHogRiderSize > 0 Then
		$CountUsedHogRiderSizeShow = "      " & String($CountHogRiderSize) & "|" & @CRLF
		If $CountHogRiderSize >= 10 Then
			$CountUsedHogRiderSizeShow = "     " & String($CountHogRiderSize) & "|" & @CRLF
			If $CountHogRiderSize > 100 Then
				$CountUsedHogRiderSizeShow = "    " & String($CountHogRiderSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountValkyre > 0 Then
		$CountUsedValkyreShow = "Valkyre     |      " & String($CountValkyre)& "|"
		If $CountValkyre >= 10 Then
			$CountUsedValkyreShow = "Valkyre     |     " & String($CountValkyre)& "|"
			If $CountValkyre >= 100 Then
				$CountUsedValkyreShow = "Valkyre     |    " & String($CountValkyre)& "|"
			EndIf
		EndIf
	EndIf
	If $CountValkyreSize > 0 Then
		$CountUsedValkyreSizeShow = "      " & String($CountValkyreSize) & "|" & @CRLF
		If $CountValkyreSize >= 10 Then
			$CountUsedValkyreSizeShow = "     " & String($CountValkyreSize) & "|" & @CRLF
			If $CountValkyreSize > 100 Then
				$CountUsedValkyreSizeShow = "    " & String($CountValkyreSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountGolem > 0 Then
		$CountUsedGolemShow = "Golem       |      " & String($CountGolem)& "|"
		If $CountGolem >= 10 Then
			$CountUsedGolemShow = "Golem       |     " & String($CountGolem)& "|"
			If $CountGolem >= 100 Then
				$CountUsedGolemShow = "Golem       |    " & String($CountGolem)& "|"
			EndIf
		EndIf
	EndIf
	If $CountGolemSize > 0 Then
		$CountUsedGolemSizeShow = "      " & String($CountGolemSize) & "|" & @CRLF
		If $CountGolemSize >= 10 Then
			$CountUsedGolemSizeShow = "     " & String($CountGolemSize) & "|" & @CRLF
			If $CountGolemSize > 100 Then
				$CountUsedGolemSizeShow = "    " & String($CountGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountWitch > 0 Then
		$CountUsedWitchShow = "Witch       |      " & String($CountWitch)& "|"
		If $CountWitch >= 10 Then
			$CountUsedWitchShow = "Witch       |     " & String($CountWitch)& "|"
			If $CountWitch >= 100 Then
				$CountUsedWitchShow = "Witch       |    " & String($CountWitch)& "|"
			EndIf
		EndIf
	EndIf
	If $CountWitchSize > 0 Then
		$CountUsedWitchSizeShow = "      " & String($CountWitchSize) & "|" & @CRLF
		If $CountWitchSize >= 10 Then
			$CountUsedWitchSizeShow = "     " & String($CountWitchSize) & "|" & @CRLF
			If $CountWitchSize > 100 Then
				$CountUsedWitchSizeShow = "    " & String($CountWitchSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountLavaHound > 0 Then
		$CountUsedLavaHoundShow = "Lava Hound  |      " & String($CountLavaHound)& "|"
		If $CountLavaHound >= 10 Then
			$CountUsedLavaHoundShow = "Lava Hound  |     " & String($CountLavaHound)& "|"
			If $CountLavaHound >= 100 Then
				$CountUsedLavaHoundShow = "Lava Hound  |    " & String($CountLavaHound)& "|"
			EndIf
		EndIf
	EndIf
	If $CountLavaHoundSize > 0 Then
		$CountUsedLavaHoundSizeShow = "      " & String($CountLavaHoundSize) & "|" & @CRLF
		If $CountLavaHoundSize >= 10 Then
			$CountUsedLavaHoundSizeShow = "     " & String($CountLavaHoundSize) & "|" & @CRLF
			If $CountLavaHoundSize > 100 Then
				$CountUsedLavaHoundSizeShow = "    " & String($CountLavaHoundSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBowler > 0 Then
		$CountUsedBowlerShow = "Bowler      |      " & String($CountBowler)& "|"
		If $CountBowler >= 10 Then
			$CountUsedBowlerShow = "Bowler      |     " & String($CountBowler)& "|"
			If $CountBowler >= 100 Then
				$CountUsedBowlerShow = "Bowler      |    " & String($CountBowler)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBowlerSize > 0 Then
		$CountUsedBowlerSizeShow = "      " & String($CountBowlerSize) & "|" & @CRLF
		If $CountBowlerSize >= 10 Then
			$CountUsedBowlerSizeShow = "     " & String($CountBowlerSize) & "|" & @CRLF
			If $CountBowlerSize > 100 Then
				$CountUsedBowlerSizeShow = "    " & String($CountBowlerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountIceGolem > 0 Then
		$CountUsedIceGolemShow = "Ice Golem   |      " & String($CountIceGolem)& "|"
		If $CountIceGolem >= 10 Then
			$CountUsedIceGolemShow = "Ice Golem   |     " & String($CountIceGolem)& "|"
			If $CountIceGolem >= 100 Then
				$CountUsedIceGolemShow = "Ice Golem   |    " & String($CountIceGolem)& "|"
			EndIf
		EndIf
	EndIf
	If $CountIceGolemSize > 0 Then
		$CountUsedIceGolemSizeShow = "      " & String($CountIceGolemSize) & "|" & @CRLF
		If $CountIceGolemSize >= 10 Then
			$CountUsedIceGolemSizeShow = "     " & String($CountIceGolemSize) & "|" & @CRLF
			If $CountIceGolemSize > 100 Then
				$CountUsedIceGolemSizeShow = "    " & String($CountIceGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf

	;Spell
	If $CountLSpell > 0 Then
		$CountUsedLSpellShow = "Light S.    |      " & String($CountLSpell)& "|"
		If $CountLSpell >= 10 Then
			$CountUsedLSpellShow = "Light S.    |     " & String($CountLSpell)& "|"
			If $CountLSpell >= 100 Then
				$CountUsedLSpellShow = "Light S.    |    " & String($CountLSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountLSpellSize > 0 Then
		$CountUsedLSpellSizeShow = "      " & String($CountLSpellSize) & "|" & @CRLF
		If $CountLSpellSize >= 10 Then
			$CountUsedLSpellSizeShow = "     " & String($CountLSpellSize) & "|" & @CRLF
			If $CountLSpellSize > 100 Then
				$CountUsedLSpellSizeShow = "    " & String($CountLSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHSpell > 0 Then
		$CountUsedHSpellShow = "Heal S.     |      " & String($CountHSpell)& "|"
		If $CountHSpell >= 10 Then
			$CountUsedHSpellShow = "Heal S.     |     " & String($CountHSpell)& "|"
			If $CountHSpell >= 100 Then
				$CountUsedHSpellShow = "Heal S.     |    " & String($CountHSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHSpellSize > 0 Then
		$CountUsedHSpellSizeShow = "      " & String($CountHSpellSize) & "|" & @CRLF
		If $CountHSpellSize >= 10 Then
			$CountUsedHSpellSizeShow = "     " & String($CountHSpellSize) & "|" & @CRLF
			If $CountHSpellSize > 100 Then
				$CountUsedHSpellSizeShow = "    " & String($CountHSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountRSpell > 0 Then
		$CountUsedRSpellShow = "Rage S.     |      " & String($CountRSpell)& "|"
		If $CountRSpell >= 10 Then
			$CountUsedRSpellShow = "Rage S.     |     " & String($CountRSpell)& "|"
			If $CountRSpell >= 100 Then
				$CountUsedRSpellShow = "Rage S.     |    " & String($CountRSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountRSpellSize > 0 Then
		$CountUsedRSpellSizeShow = "      " & String($CountRSpellSize) & "|" & @CRLF
		If $CountRSpellSize >= 10 Then
			$CountUsedRSpellSizeShow = "     " & String($CountRSpellSize) & "|" & @CRLF
			If $CountRSpellSize > 100 Then
				$CountUsedRSpellSizeShow = "    " & String($CountRSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountJSpell > 0 Then
		$CountUsedJSpellShow = "Jump S.     |      " & String($CountJSpell)& "|"
		If $CountJSpell >= 10 Then
			$CountUsedJSpellShow = "Jump S.     |     " & String($CountJSpell)& "|"
			If $CountJSpell >= 100 Then
				$CountUsedJSpellShow = "Jump S.     |    " & String($CountJSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountJSpellSize > 0 Then
		$CountUsedJSpellSizeShow = "      " & String($CountJSpellSize) & "|" & @CRLF
		If $CountJSpellSize >= 10 Then
			$CountUsedJSpellSizeShow = "     " & String($CountJSpellSize) & "|" & @CRLF
			If $CountJSpellSize > 100 Then
				$CountUsedJSpellSizeShow = "    " & String($CountJSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountFSpell > 0 Then
		$CountUsedFSpellShow = "Freeze S.   |      " & String($CountFSpell)& "|"
		If $CountFSpell >= 10 Then
			$CountUsedFSpellShow = "Freeze S.   |     " & String($CountFSpell)& "|"
			If $CountFSpell >= 100 Then
				$CountUsedFSpellShow = "Freeze S.   |    " & String($CountFSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountFSpellSize > 0 Then
		$CountUsedFSpellSizeShow = "      " & String($CountFSpellSize) & "|" & @CRLF
		If $CountFSpellSize >= 10 Then
			$CountUsedFSpellSizeShow = "     " & String($CountFSpellSize) & "|" & @CRLF
			If $CountFSpellSize > 100 Then
				$CountUsedFSpellSizeShow = "    " & String($CountFSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountCSpell > 0 Then
		$CountUsedCSpellShow = "Clone S.    |      " & String($CountCSpell)& "|"
		If $CountCSpell >= 10 Then
			$CountUsedCSpellShow = "Clone S.    |     " & String($CountCSpell)& "|"
			If $CountCSpell >= 100 Then
				$CountUsedCSpellShow = "Clone S.    |    " & String($CountCSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountCSpellSize > 0 Then
		$CountUsedCSpellSizeShow = "      " & String($CountCSpellSize) & "|" & @CRLF
		If $CountCSpellSize >= 10 Then
			$CountUsedCSpellSizeShow = "     " & String($CountCSpellSize) & "|" & @CRLF
			If $CountCSpellSize > 100 Then
				$CountUsedCSpellSizeShow = "    " & String($CountCSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountPSpell > 0 Then
		$CountUsedPSpellShow = "Poison S.   |      " & String($CountPSpell)& "|"
		If $CountPSpell >= 10 Then
			$CountUsedPSpellShow = "Poison S.   |     " & String($CountPSpell)& "|"
			If $CountPSpell >= 100 Then
				$CountUsedPSpellShow = "Poison S.   |    " & String($CountPSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountPSpellSize > 0 Then
		$CountUsedPSpellSizeShow = "      " & String($CountPSpellSize) & "|" & @CRLF
		If $CountPSpellSize >= 10 Then
			$CountUsedPSpellSizeShow = "     " & String($CountPSpellSize) & "|" & @CRLF
			If $CountPSpellSize > 100 Then
				$CountUsedPSpellSizeShow = "    " & String($CountPSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountESpell > 0 Then
		$CountUsedESpellShow = "Earthquake S|      " & String($CountESpell)& "|"
		If $CountESpell >= 10 Then
			$CountUsedESpellShow = "Earthquake S|     " & String($CountESpell)& "|"
			If $CountESpell >= 100 Then
				$CountUsedESpellShow = "Earthquake S|    " & String($CountESpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountESpellSize > 0 Then
		$CountUsedESpellSizeShow = "      " & String($CountESpellSize) & "|" & @CRLF
		If $CountESpellSize >= 10 Then
			$CountUsedESpellSizeShow = "     " & String($CountESpellSize) & "|" & @CRLF
			If $CountESpellSize > 100 Then
				$CountUsedESpellSizeShow = "    " & String($CountESpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHaSpell > 0 Then
		$CountUsedHaSpellShow = "Haste S.    |      " & String($CountHaSpell)& "|"
		If $CountHaSpell >= 10 Then
			$CountUsedHaSpellShow = "Haste S.    |     " & String($CountHaSpell)& "|"
			If $CountHaSpell >= 100 Then
				$CountUsedHaSpellShow = "Haste S.    |    " & String($CountHaSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHaSpellSize > 0 Then
		$CountUsedHaSpellSizeShow = "      " & String($CountHaSpellSize) & "|" & @CRLF
		If $CountHaSpellSize >= 10 Then
			$CountUsedHaSpellSizeShow = "     " & String($CountHaSpellSize) & "|" & @CRLF
			If $CountHaSpellSize > 100 Then
				$CountUsedHaSpellSizeShow = "    " & String($CountHaSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountSkSpell > 0 Then
		$CountUsedSkSpellShow = "Skeleton S. |      " & String($CountSkSpell)& "|"
		If $CountSkSpell >= 10 Then
			$CountUsedSkSpellShow = "Skeleton S. |     " & String($CountSkSpell)& "|"
			If $CountSkSpell >= 100 Then
				$CountUsedSkSpellShow = "Skeleton S. |    " & String($CountSkSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountSkSpellSize > 0 Then
		$CountUsedSkSpellSizeShow = "      " & String($CountSkSpellSize) & "|" & @CRLF
		If $CountSkSpellSize >= 10 Then
			$CountUsedSkSpellSizeShow = "     " & String($CountSkSpellSize) & "|" & @CRLF
			If $CountSkSpellSize > 100 Then
				$CountUsedSkSpellSizeShow = "    " & String($CountSkSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBtSpell > 0 Then
		$CountUsedBtSpellShow = "Bat S.      |      " & String($CountBtSpell)& "|"
		If $CountBtSpell >= 10 Then
			$CountUsedBtSpellShow = "Bat S.      |     " & String($CountBtSpell)& "|"
			If $CountBtSpell >= 100 Then
				$CountUsedBtSpellShow = "Bat S.      |    " & String($CountBtSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBtSpellSize > 0 Then
		$CountUsedBtSpellSizeShow = "      " & String($CountBtSpellSize) & "|" & @CRLF
		If $CountBtSpellSize >= 10 Then
			$CountUsedBtSpellSizeShow = "     " & String($CountBtSpellSize) & "|" & @CRLF
			If $CountBtSpellSize > 100 Then
				$CountUsedBtSpellSizeShow = "    " & String($CountBtSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf

$ArmyCountTXT = $CountUsedBarbarianShow & $CountUsedBarbarianSizeShow & _
				$CountUsedArcherShow & $CountUsedArcherSizeShow & _
				$CountUsedGiantShow & $CountUsedGiantSizeShow & _
				$CountUsedGoblinShow & $CountUsedGoblinSizeShow & _
				$CountUsedWallBreakerShow & $CountUsedWallBreakerSizeShow & _
				$CountUsedBaloonShow & $CountUsedBaloonSizeShow & _
				$CountUsedWizardShow & $CountUsedWizardSizeShow & _
				$CountUsedHealerShow & $CountUsedHealerSizeShow & _
				$CountUsedDragonShow & $CountUsedDragonSizeShow & _
				$CountUsedPekkaShow & $CountUsedPekkaSizeShow & _
				$CountUsedBabyDragonShow & $CountUsedBabyDragonSizeShow & _
				$CountUsedMinerShow & $CountUsedMinerSizeShow & _
				$CountUsedElectroDragonShow & $CountUsedElectroDragonSizeShow & _
				$CountUsedYetiShow & $CountUsedYetiSizeShow & _
				$CountUsedMinionShow & $CountUsedMinionSizeShow & _
				$CountUsedHogRiderShow & $CountUsedHogRiderSizeShow & _
				$CountUsedValkyreShow & $CountUsedValkyreSizeShow & _
				$CountUsedGolemShow & $CountUsedGolemSizeShow & _
				$CountUsedWitchShow & $CountUsedWitchSizeShow & _
				$CountUsedLavaHoundShow & $CountUsedLavaHoundSizeShow & _
				$CountUsedBowlerShow & $CountUsedBowlerSizeShow & _
				$CountUsedIceGolemShow & $CountUsedIceGolemSizeShow & _
				$CountUsedLSpellShow & $CountUsedLSpellSizeShow & _
				$CountUsedHSpellShow & $CountUsedHSpellSizeShow & _
				$CountUsedRSpellShow & $CountUsedRSpellSizeShow & _
				$CountUsedJSpellShow & $CountUsedJSpellSizeShow & _
				$CountUsedFSpellShow & $CountUsedFSpellSizeShow & _
				$CountUsedCSpellShow & $CountUsedCSpellSizeShow & _
				$CountUsedPSpellShow & $CountUsedPSpellSizeShow & _
				$CountUsedESpellShow & $CountUsedESpellSizeShow & _
				$CountUsedHaSpellShow & $CountUsedHaSpellSizeShow & _
				$CountUsedSkSpellShow & $CountUsedSkSpellSizeShow & _
				$CountUsedBtSpellShow & $CountUsedBtSpellSizeShow & _
				$CountUsedKingShow & _
				$CountUsedQueenShow & _
				$CountUsedWardenShow & _
				$CountUsedRoyalChampionShow & _
				$CountUsedWWShow & _
				$CountUsedBBShow & _
				$CountUsedSSShow & _
				$CountUsedSBShow & _
				$CountUsedCCShow & _
				"----------------------------" & @CRLF & _
				$SumOfArmySizeCountShow & _
				$SumOfSpellSizeCountShow












EndFunc   ;==>CountUsedTroops

Func CountUsedTroopsAfterUndo()
	If $LOGName = "Barbarian" Then
		$CountBarbarian = $CountBarbarian - 1
		$CountBarbarianSize = $CountBarbarian * $CounterTroop_TroopSize
	ElseIf $LOGName = "Archer" Then
		$CountArcher = $CountArcher - 1
		$CountArcherSize = $CountArcher * $CounterTroop_TroopSize
	ElseIf $LOGName = "Giant" Then
		$CountGiant = $CountGiant - 1
		$CountGiantSize = $CountGiant * $CounterTroop_TroopSize
	ElseIf $LOGName = "Goblin" Then
		$CountGoblin = $CountGoblin - 1
		$CountGoblinSize = $CountGoblin * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wall Breaker" Then
		$CountWallBreaker = $CountWallBreaker - 1
		$CountWallBreakerSize = $CountWallBreaker * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baloon" Then
		$CountBaloon = $CountBaloon - 1
		$CountBaloonSize = $CountBaloon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wizard" Then
		$CountWizard = $CountWizard - 1
		$CountWizardSize = $CountWizard * $CounterTroop_TroopSize
	ElseIf $LOGName = "Healer" Then
		$CountHealer = $CountHealer - 1
		$CountHealerSize = $CountHealer * $CounterTroop_TroopSize
	ElseIf $LOGName = "Dragon" Then
		$CountDragon = $CountDragon - 1
		$CountDragonSize = $CountDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "P.E.K.K.A" Then
		$CountPekka = $CountPekka - 1
		$CountPekkaSize = $CountPekka * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baby Dragon" Then
		$CountBabyDragon = $CountBabyDragon - 1
		$CountBabyDragonSize = $CountBabyDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Miner" Then
		$CountMiner = $CountMiner - 1
		$CountMinerSize = $CountMiner * $CounterTroop_TroopSize
	ElseIf $LOGName = "Electro Dragon" Then
		$CountElectroDragon = $CountElectroDragon - 1
		$CountElectroDragonSize = $CountElectroDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Yeti" Then
		$CountYeti = $CountYeti - 1
		$CountYetiSize = $CountYeti * $CounterTroop_TroopSize
	ElseIf $LOGName = "Minion" Then
		$CountMinion = $CountMinion - 1
		$CountMinionSize = $CountMinion * $CounterTroop_TroopSize
	ElseIf $LOGName = "Hog Rider" Then
		$CountHogRider = $CountHogRider - 1
		$CountHogRiderSize = $CountHogRider * $CounterTroop_TroopSize
	ElseIf $LOGName = "Valkyre" Then
		$CountValkyre = $CountValkyre - 1
		$CountValkyreSize = $CountValkyre * $CounterTroop_TroopSize
	ElseIf $LOGName = "Golem" Then
		$CountGolem = $CountGolem - 1
		$CountGolemSize = $CountGolem * $CounterTroop_TroopSize
	ElseIf $LOGName = "Witch" Then
		$CountWitch = $CountWitch - 1
		$CountWitchSize = $CountWitch * $CounterTroop_TroopSize
	ElseIf $LOGName = "Lava Hound" Then
		$CountLavaHound = $CountLavaHound - 1
		$CountLavaHoundSize = $CountLavaHound * $CounterTroop_TroopSize
	ElseIf $LOGName = "Bowler" Then
		$CountBowler = $CountBowler - 1
		$CountBowlerSize = $CountBowler * $CounterTroop_TroopSize
	ElseIf $LOGName = "Ice Golem" Then
		$CountIceGolem = $CountIceGolem - 1
		$CountIceGolemSize = $CountIceGolem * $CounterTroop_TroopSize
	ElseIf $TName = "LSpell     " Then
		$CountLSpell = $CountLSpell - 1
		$CountLSpellSize = $CountLSpell * $CounterTroop_SpellSize
	ElseIf $TName = "HSpell     " Then
		$CountHSpell = $CountHSpell - 1
		$CountHSpellSize = $CountHSpell * $CounterTroop_SpellSize
	ElseIf $TName = "RSpell     " Then
		$CountRSpell = $CountRSpell - 1
		$CountRSpellSize = $CountRSpell * $CounterTroop_SpellSize
	ElseIf $TName = "JSpell     " Then
		$CountJSpell = $CountJSpell - 1
		$CountJSpellSize = $CountJSpell * $CounterTroop_SpellSize
	ElseIf $TName = "FSpell     " Then
		$CountFSpell = $CountFSpell - 1
		$CountFSpellSize = $CountFSpell * $CounterTroop_SpellSize
	ElseIf $TName = "CSpell     " Then
		$CountCSpell = $CountCSpell - 1
		$CountCSpellSize = $CountCSpell * $CounterTroop_SpellSize
	ElseIf $TName = "PSpell     " Then
		$CountPSpell = $CountPSpell - 1
		$CountPSpellSize = $CountPSpell * $CounterTroop_SpellSize
	ElseIf $TName = "ESpell     " Then
		$CountESpell = $CountESpell - 1
		$CountESpellSize = $CountESpell * $CounterTroop_SpellSize
	ElseIf $TName = "HaSpell    " Then
		$CountHaSpell = $CountHaSpell - 1
		$CountHaSpellSize = $CountHaSpell * $CounterTroop_SpellSize
	ElseIf $TName = "SkSpell    " Then
		$CountSkSpell = $CountSkSpell - 1
		$CountSkSpellSize = $CountSkSpell * $CounterTroop_SpellSize
	ElseIf $TName = "BtSpell    " Then
		$CountBtSpell = $CountBtSpell - 1
		$CountBtSpellSize = $CountBtSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "King" Then
		$CountKing = $CountKing - 1
	ElseIf $LOGName = "Queen" Then
		$CountQueen = $CountQueen - 1
	ElseIf $LOGName = "Warden" Then
		$CountWarden = $CountWarden - 1
	ElseIf $LOGName = "Royal Champion" Then
		$CountRoyalChampion = $CountRoyalChampion - 1
	ElseIf $LOGName = "Wall Wrecker" Then
		$CountWW = $CountWW - 1
	ElseIf $LOGName = "Battle Blimp" Then
		$CountBB = $CountBB - 1
	ElseIf $LOGName = "Stone Slamer" Then
		$CountSS = $CountSS - 1
	ElseIf $LOGName = "Siege Barrack" Then
		$CountSB = $CountSB - 1
	ElseIf $TName = "Castle     " Then
		$CountCC = $CountCC - 1
	EndIf


   $SumOfArmySizeCount =$CountBarbarianSize + $CountArcherSize + _
						$CountGiantSize + $CountGoblinSize + _
						$CountWallBreakerSize + $CountBaloonSize + _
						$CountWizardSize + $CountHealerSize + _
						$CountDragonSize + _
						$CountPekkaSize + $CountBabyDragonSize + _
						$CountMinerSize +  $CountElectroDragonSize + $CountYetiSize + _
						$CountMinionSize + $CountHogRiderSize + _
						$CountValkyreSize + $CountGolemSize + _
						$CountWitchSize + $CountLavaHoundSize + _
						$CountBowlerSize + $CountIceGolemSize

   $SumOfArmySizeCountShow = "Your Used Army Size is " & String($SumOfArmySizeCount) & @CRLF

   $SumOfSpellSizeCount = $CountLSpellSize + $CountHSpellSize + _
						   $CountRSpellSize + $CountJSpellSize + _
						   $CountFSpellSize + $CountCSpellSize + _
						   $CountPSpellSize + $CountESpellSize + _
						   $CountHaSpellSize + $CountSkSpellSize + _
						   $CountBtSpellSize

   $SumOfSpellSizeCountShow = "Your Used Spell Size is " & String($SumOfSpellSizeCount)



	If $CountKing > 0 Then
		$CountUsedKingShow = "King             " & ChrW("8730") &@CRLF
	Else
		$CountUsedKingShow = ""
	EndIf
	If $CountQueen > 0 Then
		$CountUsedQueenShow = "Queen            " & ChrW("8730") &@CRLF
	Else
		$CountUsedQueenShow = ""
	EndIf
	If $CountWarden > 0 Then
		$CountUsedWardenShow = "Warden           " & ChrW("8730") &@CRLF
	Else
		$CountUsedWardenShow = ""
	EndIf
	If $CountRoyalChampion > 0 Then
		$CountUsedRoyalChampionShow = "Royal Champion   " & ChrW("8730") &@CRLF
	Else
		$CountUsedRoyalChampionShow = ""
	EndIf
	If $CountWW > 0 Then
		$CountUsedWWShow = "Wall Wrecker     " & ChrW("8730") &@CRLF
	Else
		$CountUsedWWShow = ""
	EndIf
	If $CountBB > 0 Then
		$CountUsedBBShow = "Battle Blimp     " & ChrW("8730") &@CRLF
	Else
		$CountUsedBBShow = ""
	EndIf
	If $CountSS > 0 Then
		$CountUsedSSShow = "Stone Slamer     " & ChrW("8730") &@CRLF
	Else
		$CountUsedSSShow = ""
	EndIf
	If $CountSB > 0 Then
		$CountUsedSBShow = "Siege Barrack    " & ChrW("8730") &@CRLF
	Else
		$CountUsedSBShow = ""
	EndIf

	If $CountCC > 0 Then
		$CountUsedCCShow = "Clan Castle      " & ChrW("8730") &@CRLF
	Else
		$CountUsedCCShow = ""
	EndIf




	If $CountBarbarian > 0 Then
		$CountUsedBarbarianShow = "Barbarian   |      " & $CountBarbarian & "|"
		If $CountBarbarian >= 10 Then
			$CountUsedBarbarianShow = "Barbarian   |     " & $CountBarbarian & "|"
			If $CountBarbarian >= 100 Then
				$CountUsedBarbarianShow = "Barbarian   |    " & $CountBarbarian& "|"
			EndIf
		EndIf
	Else
		$CountUsedBarbarianShow = ""
	EndIf
	If $CountBarbarianSize > 0 Then
		$CountUsedBarbarianSizeShow = "      " & $CountBarbarianSize & "|" & @CRLF
		If $CountBarbarianSize >= 10 Then
			$CountUsedBarbarianSizeShow = "     " & $CountBarbarianSize & "|" & @CRLF
			If $CountBarbarianSize > 100 Then
				$CountUsedBarbarianSizeShow = "    " & $CountBarbarianSize & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBarbarianSizeShow = ""
	EndIf
	If $CountArcher > 0 Then
		$CountUsedArcherShow = "Archer      |      " & String($CountArcher)& "|"
		If $CountArcher >= 10 Then
			$CountUsedArcherShow = "Archer      |     " & String($CountArcher)& "|"
			If $CountArcher >= 100 Then
				$CountUsedArcherShow = "Archer      |    " & String($CountArcher)& "|"
			EndIf
		EndIf
	Else
		$CountUsedArcherShow = ""
	EndIf
	If $CountArcherSize > 0 Then
		$CountUsedArcherSizeShow = "      " & String($CountArcherSize) & "|" & @CRLF
		If $CountArcherSize >= 10 Then
			$CountUsedArcherSizeShow = "     " & String($CountArcherSize) & "|" & @CRLF
			If $CountArcherSize > 100 Then
				$CountUsedArcherSizeShow = "    " & String($CountArcherSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedArcherSizeShow = ""
	EndIf
	If $CountGiant > 0 Then
		$CountUsedGiantShow = "Giant       |      " & String($CountGiant)& "|"
		If $CountGiant >= 10 Then
			$CountUsedGiantShow = "Giant       |     " & String($CountGiant)& "|"
			If $CountGiant >= 100 Then
				$CountUsedGiantShow = "Giant       |    " & String($CountGiant)& "|"
			EndIf
		EndIf
	Else
		$CountUsedGiantShow = ""
	EndIf
	If $CountGiantSize > 0 Then
		$CountUsedGiantSizeShow = "      " & String($CountGiantSize) & "|" & @CRLF
		If $CountGiantSize >= 10 Then
			$CountUsedGiantSizeShow = "     " & String($CountGiantSize) & "|" & @CRLF
			If $CountGiantSize > 100 Then
				$CountUsedGiantSizeShow = "    " & String($CountGiantSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedGiantSizeShow = ""
	EndIf
	If $CountGoblin > 0 Then
		$CountUsedGoblinShow = "Goblin      |      " & String($CountGoblin)& "|"
		If $CountGoblin >= 10 Then
			$CountUsedGoblinShow = "Goblin      |     " & String($CountGoblin)& "|"
			If $CountGoblin >= 100 Then
				$CountUsedGoblinShow = "Goblin      |    " & String($CountGoblin)& "|"
			EndIf
		EndIf
	Else
		$CountUsedGoblinShow = ""
	EndIf
	If $CountGoblinSize > 0 Then
		$CountUsedGoblinSizeShow = "      " & String($CountGoblinSize) & "|" & @CRLF
		If $CountGoblinSize >= 10 Then
			$CountUsedGoblinSizeShow = "     " & String($CountGoblinSize) & "|" & @CRLF
			If $CountGoblinSize > 100 Then
				$CountUsedGoblinSizeShow = "    " & String($CountGoblinSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedGoblinSizeShow = ""
	EndIf
	If $CountWallBreaker > 0 Then
		$CountUsedWallBreakerShow = "Wall Breaker|      " & String($CountWallBreaker)& "|"
		If $CountWallBreaker >= 10 Then
			$CountUsedWallBreakerShow = "Wall Breaker|     " & String($CountWallBreaker)& "|"
			If $CountWallBreaker >= 100 Then
				$CountUsedWallBreakerShow = "Wall Breaker|    " & String($CountWallBreaker)& "|"
			EndIf
		EndIf
	Else
		$CountUsedWallBreakerShow = ""
	EndIf
	If $CountWallBreakerSize > 0 Then
		$CountUsedWallBreakerSizeShow = "      " & String($CountWallBreakerSize) & "|" & @CRLF
		If $CountWallBreakerSize >= 10 Then
			$CountUsedWallBreakerSizeShow = "     " & String($CountWallBreakerSize) & "|" & @CRLF
			If $CountWallBreakerSize > 100 Then
				$CountUsedWallBreakerSizeShow = "    " & String($CountWallBreakerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedWallBreakerSizeShow = ""
	EndIf
	If $CountBaloon > 0 Then
		$CountUsedBaloonShow = "Balloon     |      " & String($CountBaloon)& "|"
		If $CountBaloon >= 10 Then
			$CountUsedBaloonShow = "Balloon     |     " & String($CountBaloon)& "|"
			If $CountBaloon >= 100 Then
				$CountUsedBaloonShow = "Balloon     |    " & String($CountBaloon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBaloonShow = ""
	EndIf
	If $CountBaloonSize > 0 Then
		$CountUsedBaloonSizeShow = "      " & String($CountBaloonSize) & "|" & @CRLF
		If $CountBaloonSize >= 10 Then
			$CountUsedBaloonSizeShow = "     " & String($CountBaloonSize) & "|" & @CRLF
			If $CountBaloonSize > 100 Then
				$CountUsedBaloonSizeShow = "    " & String($CountBaloonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBaloonSizeShow = ""
	EndIf
	If $CountWizard > 0 Then
		$CountUsedWizardShow = "Wizard      |      " & String($CountWizard)& "|"
		If $CountWizard >= 10 Then
			$CountUsedWizardShow = "Wizard      |     " & String($CountWizard)& "|"
			If $CountWizard >= 100 Then
				$CountUsedWizardShow = "Wizard      |    " & String($CountWizard)& "|"
			EndIf
		EndIf
	Else
		$CountUsedWizardShow = ""
	EndIf
	If $CountWizardSize > 0 Then
		$CountUsedWizardSizeShow = "      " & String($CountWizardSize) & "|" & @CRLF
		If $CountWizardSize >= 10 Then
			$CountUsedWizardSizeShow = "     " & String($CountWizardSize) & "|" & @CRLF
			If $CountWizardSize > 100 Then
				$CountUsedWizardSizeShow = "    " & String($CountWizardSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedWizardSizeShow = ""
	EndIf
	If $CountHealer > 0 Then
		$CountUsedHealerShow = "Healer      |      " & String($CountHealer)& "|"
		If $CountHealer >= 10 Then
			$CountUsedHealerShow = "Healer      |     " & String($CountHealer)& "|"
			If $CountHealer >= 100 Then
				$CountUsedHealerShow = "Healer      |    " & String($CountHealer)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHealerShow = ""
	EndIf
	If $CountHealerSize > 0 Then
		$CountUsedHealerSizeShow = "      " & String($CountHealerSize) & "|" & @CRLF
		If $CountHealerSize >= 10 Then
			$CountUsedHealerSizeShow = "     " & String($CountHealerSize) & "|" & @CRLF
			If $CountHealerSize > 100 Then
				$CountUsedHealerSizeShow = "    " & String($CountHealerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHealerSizeShow = ""
	EndIf
	If $CountDragon > 0 Then
		$CountUsedDragonShow = "Dragon      |      " & String($CountDragon)& "|"
		If $CountDragon >= 10 Then
			$CountUsedDragonShow = "Dragon      |     " & String($CountDragon)& "|"
			If $CountDragon >= 100 Then
				$CountUsedDragonShow = "Dragon      |    " & String($CountDragon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedDragonShow = ""
	EndIf
	If $CountDragonSize > 0 Then
		$CountUsedDragonSizeShow = "      " & String($CountDragonSize) & "|" & @CRLF
		If $CountDragonSize >= 10 Then
			$CountUsedDragonSizeShow = "     " & String($CountDragonSize) & "|" & @CRLF
			If $CountDragonSize > 100 Then
				$CountUsedDragonSizeShow = "    " & String($CountDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedDragonSizeShow = ""
	EndIf
	If $CountPekka > 0 Then
		$CountUsedPekkaShow = "Pekka       |      " & String($CountPekka)& "|"
		If $CountPekka >= 10 Then
			$CountUsedPekkaShow = "Pekka       |     " & String($CountPekka)& "|"
			If $CountPekka >= 100 Then
				$CountUsedPekkaShow = "Pekka       |    " & String($CountPekka)& "|"
			EndIf
		EndIf
	Else
		$CountUsedPekkaShow = ""
	EndIf
	If $CountPekkaSize > 0 Then
		$CountUsedPekkaSizeShow = "      " & String($CountPekkaSize) & "|" & @CRLF
		If $CountPekkaSize >= 10 Then
			$CountUsedPekkaSizeShow = "     " & String($CountPekkaSize) & "|" & @CRLF
			If $CountPekkaSize > 100 Then
				$CountUsedPekkaSizeShow = "    " & String($CountPekkaSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedPekkaSizeShow = ""
	EndIf
	If $CountBabyDragon > 0 Then
		$CountUsedBabyDragonShow = "Baby Dragon |      " & String($CountBabyDragon)& "|"
		If $CountBabyDragon >= 10 Then
			$CountUsedBabyDragonShow = "Baby Dragon |     " & String($CountBabyDragon)& "|"
			If $CountBabyDragon >= 100 Then
				$CountUsedBabyDragonShow = "Baby Dragon |    " & String($CountBabyDragon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBabyDragonShow = ""
	EndIf
	If $CountBabyDragonSize > 0 Then
		$CountUsedBabyDragonSizeShow = "      " & String($CountBabyDragonSize) & "|" & @CRLF
		If $CountBabyDragonSize >= 10 Then
			$CountUsedBabyDragonSizeShow = "     " & String($CountBabyDragonSize) & "|" & @CRLF
			If $CountBabyDragonSize > 100 Then
				$CountUsedBabyDragonSizeShow = "    " & String($CountBabyDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBabyDragonSizeShow = ""
	EndIf
	If $CountMiner > 0 Then
		$CountUsedMinerShow = "Miner       |      " & String($CountMiner)& "|"
		If $CountMiner >= 10 Then
			$CountUsedMinerShow = "Miner       |     " & String($CountMiner)& "|"
			If $CountMiner >= 100 Then
				$CountUsedMinerShow = "Miner       |    " & String($CountMiner)& "|"
			EndIf
		EndIf
	Else
		$CountUsedMinerShow = ""
	EndIf
	If $CountMinerSize > 0 Then
		$CountUsedMinerSizeShow = "      " & String($CountMinerSize) & "|" & @CRLF
		If $CountMinerSize >= 10 Then
			$CountUsedMinerSizeShow = "     " & String($CountMinerSize) & "|" & @CRLF
			If $CountMinerSize > 100 Then
				$CountUsedMinerSizeShow = "    " & String($CountMinerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedMinerSizeShow = ""
	EndIf
	If $CountElectroDragon > 0 Then
		$CountUsedElectroDragonShow = "Electro Drg.|      " & String($CountElectroDragon)& "|"
		If $CountElectroDragon >= 10 Then
			$CountUsedElectroDragonShow = "Electro Drg.|     " & String($CountElectroDragon)& "|"
			If $CountElectroDragon >= 100 Then
				$CountUsedElectroDragonShow = "Electro Drg.|    " & String($CountElectroDragon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedElectroDragonShow = ""
	EndIf
	If $CountElectroDragonSize > 0 Then
		$CountUsedElectroDragonSizeShow = "      " & String($CountElectroDragonSize) & "|" & @CRLF
		If $CountElectroDragonSize >= 10 Then
			$CountUsedElectroDragonSizeShow = "     " & String($CountElectroDragonSize) & "|" & @CRLF
			If $CountElectroDragonSize > 100 Then
				$CountUsedElectroDragonSizeShow = "    " & String($CountElectroDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedElectroDragonSizeShow = ""
	EndIf
	If $CountYeti > 0 Then
		$CountUsedYetiShow = "Yeti        |      " & String($CountYeti)& "|"
		If $CountYeti >= 10 Then
			$CountUsedYetiShow = "Yeti        |     " & String($CountYeti)& "|"
			If $CountYeti >= 100 Then
				$CountUsedYetiShow = "Yeti        |    " & String($CountYeti)& "|"
			EndIf
		EndIf
	Else
		$CountUsedYetiShow = ""
	EndIf
	If $CountYetiSize > 0 Then
		$CountUsedYetiSizeShow = "      " & String($CountYetiSize) & "|" & @CRLF
		If $CountYetiSize >= 10 Then
			$CountUsedYetiSizeShow = "     " & String($CountYetiSize) & "|" & @CRLF
			If $CountYetiSize > 100 Then
				$CountUsedYetiSizeShow = "    " & String($CountYetiSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedYetiSizeShow = ""
	EndIf
	If $CountMinion > 0 Then
		$CountUsedMinionShow = "Minion      |      " & String($CountMinion)& "|"
		If $CountMinion >= 10 Then
			$CountUsedMinionShow = "Minion      |     " & String($CountMinion)& "|"
			If $CountMinion >= 100 Then
				$CountUsedMinionShow = "Minion      |    " & String($CountMinion)& "|"
			EndIf
		EndIf
	Else
		$CountUsedMinionShow = ""
	EndIf
	If $CountMinionSize > 0 Then
		$CountUsedMinionSizeShow = "      " & String($CountMinionSize) & "|" & @CRLF
		If $CountMinionSize >= 10 Then
			$CountUsedMinionSizeShow = "     " & String($CountMinionSize) & "|" & @CRLF
			If $CountMinionSize > 100 Then
				$CountUsedMinionSizeShow = "    " & String($CountMinionSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedMinionSizeShow = ""
	EndIf
	If $CountHogRider > 0 Then
		$CountUsedHogRiderShow = "Hog Rider   |      " & String($CountHogRider)& "|"
		If $CountHogRider >= 10 Then
			$CountUsedHogRiderShow = "Hog Rider   |     " & String($CountHogRider)& "|"
			If $CountHogRider >= 100 Then
				$CountUsedHogRiderShow = "Hog Rider   |    " & String($CountHogRider)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHogRiderShow = ""
	EndIf
	If $CountHogRiderSize > 0 Then
		$CountUsedHogRiderSizeShow = "      " & String($CountHogRiderSize) & "|" & @CRLF
		If $CountHogRiderSize >= 10 Then
			$CountUsedHogRiderSizeShow = "     " & String($CountHogRiderSize) & "|" & @CRLF
			If $CountHogRiderSize > 100 Then
				$CountUsedHogRiderSizeShow = "    " & String($CountHogRiderSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHogRiderSizeShow = ""
	EndIf
	If $CountValkyre > 0 Then
		$CountUsedValkyreShow = "Valkyre     |      " & String($CountValkyre)& "|"
		If $CountValkyre >= 10 Then
			$CountUsedValkyreShow = "Valkyre     |     " & String($CountValkyre)& "|"
			If $CountValkyre >= 100 Then
				$CountUsedValkyreShow = "Valkyre     |    " & String($CountValkyre)& "|"
			EndIf
		EndIf
	Else
		$CountUsedValkyreShow = ""
	EndIf
	If $CountValkyreSize > 0 Then
		$CountUsedValkyreSizeShow = "      " & String($CountValkyreSize) & "|" & @CRLF
		If $CountValkyreSize >= 10 Then
			$CountUsedValkyreSizeShow = "     " & String($CountValkyreSize) & "|" & @CRLF
			If $CountValkyreSize > 100 Then
				$CountUsedValkyreSizeShow = "    " & String($CountValkyreSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedValkyreSizeShow = ""
	EndIf
	If $CountGolem > 0 Then
		$CountUsedGolemShow = "Golem       |      " & String($CountGolem)& "|"
		If $CountGolem >= 10 Then
			$CountUsedGolemShow = "Golem       |     " & String($CountGolem)& "|"
			If $CountGolem >= 100 Then
				$CountUsedGolemShow = "Golem       |    " & String($CountGolem)& "|"
			EndIf
		EndIf
	Else
		$CountUsedGolemShow = ""
	EndIf
	If $CountGolemSize > 0 Then
		$CountUsedGolemSizeShow = "      " & String($CountGolemSize) & "|" & @CRLF
		If $CountGolemSize >= 10 Then
			$CountUsedGolemSizeShow = "     " & String($CountGolemSize) & "|" & @CRLF
			If $CountGolemSize > 100 Then
				$CountUsedGolemSizeShow = "    " & String($CountGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedGolemSizeShow = ""
	EndIf
	If $CountWitch > 0 Then
		$CountUsedWitchShow = "Witch       |      " & String($CountWitch)& "|"
		If $CountWitch >= 10 Then
			$CountUsedWitchShow = "Witch       |     " & String($CountWitch)& "|"
			If $CountWitch >= 100 Then
				$CountUsedWitchShow = "Witch       |    " & String($CountWitch)& "|"
			EndIf
		EndIf
	Else
		$CountUsedWitchShow = ""
	EndIf
	If $CountWitchSize > 0 Then
		$CountUsedWitchSizeShow = "      " & String($CountWitchSize) & "|" & @CRLF
		If $CountWitchSize >= 10 Then
			$CountUsedWitchSizeShow = "     " & String($CountWitchSize) & "|" & @CRLF
			If $CountWitchSize > 100 Then
				$CountUsedWitchSizeShow = "    " & String($CountWitchSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedWitchSizeShow = ""
	EndIf
	If $CountLavaHound > 0 Then
		$CountUsedLavaHoundShow = "Lava Hound  |      " & String($CountLavaHound)& "|"
		If $CountLavaHound >= 10 Then
			$CountUsedLavaHoundShow = "Lava Hound  |     " & String($CountLavaHound)& "|"
			If $CountLavaHound >= 100 Then
				$CountUsedLavaHoundShow = "Lava Hound  |    " & String($CountLavaHound)& "|"
			EndIf
		EndIf
	Else
		$CountUsedLavaHoundShow = ""
	EndIf
	If $CountLavaHoundSize > 0 Then
		$CountUsedLavaHoundSizeShow = "      " & String($CountLavaHoundSize) & "|" & @CRLF
		If $CountLavaHoundSize >= 10 Then
			$CountUsedLavaHoundSizeShow = "     " & String($CountLavaHoundSize) & "|" & @CRLF
			If $CountLavaHoundSize > 100 Then
				$CountUsedLavaHoundSizeShow = "    " & String($CountLavaHoundSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedLavaHoundSizeShow = ""
	EndIf
	If $CountBowler > 0 Then
		$CountUsedBowlerShow = "Bowler      |      " & String($CountBowler)& "|"
		If $CountBowler >= 10 Then
			$CountUsedBowlerShow = "Bowler      |     " & String($CountBowler)& "|"
			If $CountBowler >= 100 Then
				$CountUsedBowlerShow = "Bowler      |    " & String($CountBowler)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBowlerShow = ""
	EndIf
	If $CountBowlerSize > 0 Then
		$CountUsedBowlerSizeShow = "      " & String($CountBowlerSize) & "|" & @CRLF
		If $CountBowlerSize >= 10 Then
			$CountUsedBowlerSizeShow = "     " & String($CountBowlerSize) & "|" & @CRLF
			If $CountBowlerSize > 100 Then
				$CountUsedBowlerSizeShow = "    " & String($CountBowlerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBowlerSizeShow = ""
	EndIf
	If $CountIceGolem > 0 Then
		$CountUsedIceGolemShow = "Ice Golem   |      " & String($CountIceGolem)& "|"
		If $CountIceGolem >= 10 Then
			$CountUsedIceGolemShow = "Ice Golem   |     " & String($CountIceGolem)& "|"
			If $CountIceGolem >= 100 Then
				$CountUsedIceGolemShow = "Ice Golem   |    " & String($CountIceGolem)& "|"
			EndIf
		EndIf
	Else
		$CountUsedIceGolemShow = ""
	EndIf
	If $CountIceGolemSize > 0 Then
		$CountUsedIceGolemSizeShow = "      " & String($CountIceGolemSize) & "|" & @CRLF
		If $CountIceGolemSize >= 10 Then
			$CountUsedIceGolemSizeShow = "     " & String($CountIceGolemSize) & "|" & @CRLF
			If $CountIceGolemSize > 100 Then
				$CountUsedIceGolemSizeShow = "    " & String($CountIceGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedIceGolemSizeShow = ""
	EndIf

	;Spell
	If $CountLSpell > 0 Then
		$CountUsedLSpellShow = "Light S.    |      " & String($CountLSpell)& "|"
		If $CountLSpell >= 10 Then
			$CountUsedLSpellShow = "Light S.    |     " & String($CountLSpell)& "|"
			If $CountLSpell >= 100 Then
				$CountUsedLSpellShow = "Light S.    |    " & String($CountLSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedLSpellShow = ""
	EndIf
	If $CountLSpellSize > 0 Then
		$CountUsedLSpellSizeShow = "      " & String($CountLSpellSize) & "|" & @CRLF
		If $CountLSpellSize >= 10 Then
			$CountUsedLSpellSizeShow = "     " & String($CountLSpellSize) & "|" & @CRLF
			If $CountLSpellSize > 100 Then
				$CountUsedLSpellSizeShow = "    " & String($CountLSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedLSpellSizeShow = ""
	EndIf
	If $CountHSpell > 0 Then
		$CountUsedHSpellShow = "Heal S.     |      " & String($CountHSpell)& "|"
		If $CountHSpell >= 10 Then
			$CountUsedHSpellShow = "Heal S.     |     " & String($CountHSpell)& "|"
			If $CountHSpell >= 100 Then
				$CountUsedHSpellShow = "Heal S.     |    " & String($CountHSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHSpellShow = ""
	EndIf
	If $CountHSpellSize > 0 Then
		$CountUsedHSpellSizeShow = "      " & String($CountHSpellSize) & "|" & @CRLF
		If $CountHSpellSize >= 10 Then
			$CountUsedHSpellSizeShow = "     " & String($CountHSpellSize) & "|" & @CRLF
			If $CountHSpellSize > 100 Then
				$CountUsedHSpellSizeShow = "    " & String($CountHSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHSpellSizeShow = ""
	EndIf
	If $CountRSpell > 0 Then
		$CountUsedRSpellShow = "Rage S.     |      " & String($CountRSpell)& "|"
		If $CountRSpell >= 10 Then
			$CountUsedRSpellShow = "Rage S.     |     " & String($CountRSpell)& "|"
			If $CountRSpell >= 100 Then
				$CountUsedRSpellShow = "Rage S.     |    " & String($CountRSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedRSpellShow = ""
	EndIf
	If $CountRSpellSize > 0 Then
		$CountUsedRSpellSizeShow = "      " & String($CountRSpellSize) & "|" & @CRLF
		If $CountRSpellSize >= 10 Then
			$CountUsedRSpellSizeShow = "     " & String($CountRSpellSize) & "|" & @CRLF
			If $CountRSpellSize > 100 Then
				$CountUsedRSpellSizeShow = "    " & String($CountRSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedRSpellSizeShow = ""
	EndIf
	If $CountJSpell > 0 Then
		$CountUsedJSpellShow = "Jump S.     |      " & String($CountJSpell)& "|"
		If $CountJSpell >= 10 Then
			$CountUsedJSpellShow = "Jump S.     |     " & String($CountJSpell)& "|"
			If $CountJSpell >= 100 Then
				$CountUsedJSpellShow = "Jump S.     |    " & String($CountJSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedJSpellShow = ""
	EndIf
	If $CountJSpellSize > 0 Then
		$CountUsedJSpellSizeShow = "      " & String($CountJSpellSize) & "|" & @CRLF
		If $CountJSpellSize >= 10 Then
			$CountUsedJSpellSizeShow = "     " & String($CountJSpellSize) & "|" & @CRLF
			If $CountJSpellSize > 100 Then
				$CountUsedJSpellSizeShow = "    " & String($CountJSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedJSpellSizeShow = ""
	EndIf
	If $CountFSpell > 0 Then
		$CountUsedFSpellShow = "Freeze S.   |      " & String($CountFSpell)& "|"
		If $CountFSpell >= 10 Then
			$CountUsedFSpellShow = "Freeze S.   |     " & String($CountFSpell)& "|"
			If $CountFSpell >= 100 Then
				$CountUsedFSpellShow = "Freeze S.   |    " & String($CountFSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedFSpellShow = ""
	EndIf
	If $CountFSpellSize > 0 Then
		$CountUsedFSpellSizeShow = "      " & String($CountFSpellSize) & "|" & @CRLF
		If $CountFSpellSize >= 10 Then
			$CountUsedFSpellSizeShow = "     " & String($CountFSpellSize) & "|" & @CRLF
			If $CountFSpellSize > 100 Then
				$CountUsedFSpellSizeShow = "    " & String($CountFSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedFSpellSizeShow = ""
	EndIf
	If $CountCSpell > 0 Then
		$CountUsedCSpellShow = "Clone S.    |      " & String($CountCSpell)& "|"
		If $CountCSpell >= 10 Then
			$CountUsedCSpellShow = "Clone S.    |     " & String($CountCSpell)& "|"
			If $CountCSpell >= 100 Then
				$CountUsedCSpellShow = "Clone S.    |    " & String($CountCSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedCSpellShow = ""
	EndIf
	If $CountCSpellSize > 0 Then
		$CountUsedCSpellSizeShow = "      " & String($CountCSpellSize) & "|" & @CRLF
		If $CountCSpellSize >= 10 Then
			$CountUsedCSpellSizeShow = "     " & String($CountCSpellSize) & "|" & @CRLF
			If $CountCSpellSize > 100 Then
				$CountUsedCSpellSizeShow = "    " & String($CountCSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedCSpellSizeShow = ""
	EndIf
	If $CountPSpell > 0 Then
		$CountUsedPSpellShow = "Poison S.   |      " & String($CountPSpell)& "|"
		If $CountPSpell >= 10 Then
			$CountUsedPSpellShow = "Poison S.   |     " & String($CountPSpell)& "|"
			If $CountPSpell >= 100 Then
				$CountUsedPSpellShow = "Poison S.   |    " & String($CountPSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedPSpellShow = ""
	EndIf
	If $CountPSpellSize > 0 Then
		$CountUsedPSpellSizeShow = "      " & String($CountPSpellSize) & "|" & @CRLF
		If $CountPSpellSize >= 10 Then
			$CountUsedPSpellSizeShow = "     " & String($CountPSpellSize) & "|" & @CRLF
			If $CountPSpellSize > 100 Then
				$CountUsedPSpellSizeShow = "    " & String($CountPSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedPSpellSizeShow = ""
	EndIf
	If $CountESpell > 0 Then
		$CountUsedESpellShow = "Earthquake S|      " & String($CountESpell)& "|"
		If $CountESpell >= 10 Then
			$CountUsedESpellShow = "Earthquake S|     " & String($CountESpell)& "|"
			If $CountESpell >= 100 Then
				$CountUsedESpellShow = "Earthquake S|    " & String($CountESpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedESpellShow = ""
	EndIf
	If $CountESpellSize > 0 Then
		$CountUsedESpellSizeShow = "      " & String($CountESpellSize) & "|" & @CRLF
		If $CountESpellSize >= 10 Then
			$CountUsedESpellSizeShow = "     " & String($CountESpellSize) & "|" & @CRLF
			If $CountESpellSize > 100 Then
				$CountUsedESpellSizeShow = "    " & String($CountESpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedESpellSizeShow = ""
	EndIf
	If $CountHaSpell > 0 Then
		$CountUsedHaSpellShow = "Haste S.    |      " & String($CountHaSpell)& "|"
		If $CountHaSpell >= 10 Then
			$CountUsedHaSpellShow = "Haste S.    |     " & String($CountHaSpell)& "|"
			If $CountHaSpell >= 100 Then
				$CountUsedHaSpellShow = "Haste S.    |    " & String($CountHaSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHaSpellShow = ""
	EndIf
	If $CountHaSpellSize > 0 Then
		$CountUsedHaSpellSizeShow = "      " & String($CountHaSpellSize) & "|" & @CRLF
		If $CountHaSpellSize >= 10 Then
			$CountUsedHaSpellSizeShow = "     " & String($CountHaSpellSize) & "|" & @CRLF
			If $CountHaSpellSize > 100 Then
				$CountUsedHaSpellSizeShow = "    " & String($CountHaSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHaSpellSizeShow = ""
	EndIf
	If $CountSkSpell > 0 Then
		$CountUsedSkSpellShow = "Skeleton S. |      " & String($CountSkSpell)& "|"
		If $CountSkSpell >= 10 Then
			$CountUsedSkSpellShow = "Skeleton S. |     " & String($CountSkSpell)& "|"
			If $CountSkSpell >= 100 Then
				$CountUsedSkSpellShow = "Skeleton S. |    " & String($CountSkSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedSkSpellShow = ""
	EndIf
	If $CountSkSpellSize > 0 Then
		$CountUsedSkSpellSizeShow = "      " & String($CountSkSpellSize) & "|" & @CRLF
		If $CountSkSpellSize >= 10 Then
			$CountUsedSkSpellSizeShow = "     " & String($CountSkSpellSize) & "|" & @CRLF
			If $CountSkSpellSize > 100 Then
				$CountUsedSkSpellSizeShow = "    " & String($CountSkSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedSkSpellSizeShow = ""
	EndIf
	If $CountBtSpell > 0 Then
		$CountUsedBtSpellShow = "Bat S.      |      " & String($CountBtSpell)& "|"
		If $CountBtSpell >= 10 Then
			$CountUsedBtSpellShow = "Bat S.      |     " & String($CountBtSpell)& "|"
			If $CountBtSpell >= 100 Then
				$CountUsedBtSpellShow = "Bat S.      |    " & String($CountBtSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBtSpellShow = ""
	EndIf
	If $CountBtSpellSize > 0 Then
		$CountUsedBtSpellSizeShow = "      " & String($CountBtSpellSize) & "|" & @CRLF
		If $CountBtSpellSize >= 10 Then
			$CountUsedBtSpellSizeShow = "     " & String($CountBtSpellSize) & "|" & @CRLF
			If $CountBtSpellSize > 100 Then
				$CountUsedBtSpellSizeShow = "    " & String($CountBtSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBtSpellSizeShow = ""
	EndIf


$ArmyCountTXT = $CountUsedBarbarianShow & $CountUsedBarbarianSizeShow & _
				$CountUsedArcherShow & $CountUsedArcherSizeShow & _
				$CountUsedGiantShow & $CountUsedGiantSizeShow & _
				$CountUsedGoblinShow & $CountUsedGoblinSizeShow & _
				$CountUsedWallBreakerShow & $CountUsedWallBreakerSizeShow & _
				$CountUsedBaloonShow & $CountUsedBaloonSizeShow & _
				$CountUsedWizardShow & $CountUsedWizardSizeShow & _
				$CountUsedHealerShow & $CountUsedHealerSizeShow & _
				$CountUsedDragonShow & $CountUsedDragonSizeShow & _
				$CountUsedPekkaShow & $CountUsedPekkaSizeShow & _
				$CountUsedBabyDragonShow & $CountUsedBabyDragonSizeShow & _
				$CountUsedMinerShow & $CountUsedMinerSizeShow & _
				$CountUsedElectroDragonShow & $CountUsedElectroDragonSizeShow & _
				$CountUsedYetiShow & $CountUsedYetiSizeShow & _
				$CountUsedMinionShow & $CountUsedMinionSizeShow & _
				$CountUsedHogRiderShow & $CountUsedHogRiderSizeShow & _
				$CountUsedValkyreShow & $CountUsedValkyreSizeShow & _
				$CountUsedGolemShow & $CountUsedGolemSizeShow & _
				$CountUsedWitchShow & $CountUsedWitchSizeShow & _
				$CountUsedLavaHoundShow & $CountUsedLavaHoundSizeShow & _
				$CountUsedBowlerShow & $CountUsedBowlerSizeShow & _
				$CountUsedIceGolemShow & $CountUsedIceGolemSizeShow & _
				$CountUsedLSpellShow & $CountUsedLSpellSizeShow & _
				$CountUsedHSpellShow & $CountUsedHSpellSizeShow & _
				$CountUsedRSpellShow & $CountUsedRSpellSizeShow & _
				$CountUsedJSpellShow & $CountUsedJSpellSizeShow & _
				$CountUsedFSpellShow & $CountUsedFSpellSizeShow & _
				$CountUsedCSpellShow & $CountUsedCSpellSizeShow & _
				$CountUsedPSpellShow & $CountUsedPSpellSizeShow & _
				$CountUsedESpellShow & $CountUsedESpellSizeShow & _
				$CountUsedHaSpellShow & $CountUsedHaSpellSizeShow & _
				$CountUsedSkSpellShow & $CountUsedSkSpellSizeShow & _
				$CountUsedBtSpellShow & $CountUsedBtSpellSizeShow & _
				$CountUsedKingShow & _
				$CountUsedQueenShow & _
				$CountUsedWardenShow & _
				$CountUsedRoyalChampionShow & _
				$CountUsedWWShow & _
				$CountUsedBBShow & _
				$CountUsedSSShow & _
				$CountUsedSBShow & _
				$CountUsedCCShow & _
				"----------------------------" & @CRLF & _
				$SumOfArmySizeCountShow & _
				$SumOfSpellSizeCountShow










EndFunc   ;==>CountUsedTroopsAfterUndo


