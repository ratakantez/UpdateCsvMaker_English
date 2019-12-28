
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
Func ADDSides()
	GetSidePoint()

	FileWrite($g_sSaveLocation,$ASideEnter)
	FileWrite($g_sSaveLocation, @CRLF)
	$GetSideA = "SIDE  " & $ExtrGoldCSV & "" & $ExtrElixirCSV & "" & $ExtrDarkCSV & "" & $DepoGoldCSV & "" & $DepoElixirCSV & "" & $DepoDarkCSV & "" & $TownHallCSV & "" & $ForcedSideCSV &	"|           |"
	FileWrite($g_sSaveLocation,$GetSideA)
	FileWrite($g_sSaveLocation, @CRLF)
	FileWrite($g_sSaveLocation,$BSideEnter)
	FileWrite($g_sSaveLocation, @CRLF)
	$GetSideB = "SIDEB " & $EagleCSV & "" & $InfernoCSV & "" & $XbowCSV & "" & $WizzTowerCSV & "" & $MortarCSV & "" & $AirDefanceCSV & "" & $ScatterShotCSV & "|0          |           |"
	FileWrite($g_sSaveLocation,$GetSideB)
	FileWrite($g_sSaveLocation, @CRLF)
	FileWrite($g_sSaveLocation, @CRLF)
EndFunc

Func GetSidePoint()
 $GetInferno = String(GUICtrlRead($infernoPoint))
  $GetAirDefance = String(GUICtrlRead($airpoint))
  $GetEagle = String(GUICtrlRead($eaglepoint))
  $GetScatterShot = String(GUICtrlRead($ScatterShotPoint))
  $GetTH = String(GUICtrlRead($THPoint))
  $GetMortar = String(GUICtrlRead($MortarPoint))
  $GetScatterShot = String(GUICtrlRead($ScatterShotPoint))
  $GetXbow = String(GUICtrlRead($XbowpointPoint))
  $GetWizzTower = String(GUICtrlRead($WTowerPoint))
  $GetGoldStorage = String(GUICtrlRead($GoldStoragePoint))
  $GetElixirStorage = String(GUICtrlRead($ElixirStoragePoint))
  $GetDarkElixirStorage = String(GUICtrlRead($DarkElixirStoragePoint))
  $GetMine = String(GUICtrlRead($MinePoint))
  $GetCollector = String(GUICtrlRead($CollectorPoint))
  $GetDrill = String(GUICtrlRead($DrillPoint))

  $GetForcedSide =  _GUICtrlComboBox_GetCurSel($ForcedSidePoint)
  $SideSUM = $GetInferno + $GetAirDefance + $GetEagle + $GetTH + $GetMortar + $GetScatterShot + $GetXbow + $GetWizzTower + $GetGoldStorage + $GetElixirStorage + $GetDarkElixirStorage + $GetDarkElixirStorage + $GetMine + $GetCollector + $GetDrill


    If $GetEagle < 10 Then
	 $EagleCSV = "|" & $GetEagle & "          "
  ElseIf $GetEagle > 9 Then
	 $EagleCSV = "|" & $GetEagle & "         "
  EndIf

   If $GetInferno < 10 Then
	 $InfernoCSV = "|" & $GetInferno & "          "
  ElseIf $GetInferno > 9 Then
	 $InfernoCSV = "|" & $GetInferno & "         "
  EndIf

   If $GetXbow < 10 Then
	 $XbowCSV = "|" & $GetXbow & "          "
  ElseIf $GetXbow > 9 Then
	 $XbowCSV = "|" & $GetXbow & "         "
  EndIf

   If $GetWizzTower < 10 Then
	 $WizzTowerCSV = "|" & $GetWizzTower & "          "
  ElseIf $GetWizzTower > 9 Then
	 $WizzTowerCSV = "|" & $GetWizzTower & "         "
  EndIf

  If $GetMortar < 10 Then
	 $MortarCSV = "|" & $GetMortar & "          "
  ElseIf $GetMortar > 9 Then
	 $MortarCSV = "|" & $GetMortar & "         "
  EndIf

  If $GetAirDefance < 10 Then
	 $AirDefanceCSV = "|" & $GetAirDefance & "          "
  ElseIf $GetAirDefance > 9 Then
	 $AirDefanceCSV = "|" & $GetAirDefance & "         "
  EndIf

  If $GetScatterShot < 10 Then
	 $ScatterShotCSV = "|" & $GetScatterShot & "          "
  ElseIf $GetScatterShot > 9 Then
	 $ScatterShotCSV = "|" & $GetScatterShot & "         "
  EndIf

   If $GetMine < 10 Then
	 $ExtrGoldCSV = "|" & $GetMine & "          "
  ElseIf $GetMine > 9 Then
	 $ExtrGoldCSV = "|" & $GetMine & "         "
  EndIf

  If $GetCollector < 10 Then
	 $ExtrElixirCSV = "|" & $GetCollector & "          "
  ElseIf $GetCollector > 9 Then
	 $ExtrElixirCSV = "|" & $GetCollector & "         "
  EndIf

   If $GetDrill < 10 Then
	 $ExtrDarkCSV = "|" & $GetDrill & "          "
  ElseIf $GetDrill > 9 Then
	 $ExtrDarkCSV = "|" & $GetDrill & "         "
  EndIf

   If $GetGoldStorage < 10 Then
	 $DepoGoldCSV = "|" & $GetGoldStorage & "          "
  ElseIf $GetGoldStorage > 9 Then
	 $DepoGoldCSV = "|" & $GetGoldStorage & "         "
  EndIf

   If $GetElixirStorage < 10 Then
	 $DepoElixirCSV = "|" & $GetElixirStorage & "          "
  ElseIf $GetElixirStorage > 9 Then
	 $DepoElixirCSV = "|" & $GetElixirStorage & "         "
  EndIf

   If $GetDarkElixirStorage < 10 Then
	 $DepoDarkCSV = "|" & $GetDarkElixirStorage & "          "
  ElseIf $GetDarkElixirStorage > 9 Then
	 $DepoDarkCSV = "|" & $GetDarkElixirStorage & "         "
  EndIf

   If $GetTH < 10 Then
	 $TownHallCSV = "|" & $GetTH & "          "
  ElseIf $GetTH > 9 Then
	 $TownHallCSV = "|" & $GetTH & "         "
  EndIf

   Switch $GetForcedSide
	 Case 0
		 $ForcedSideCSV = "|           "
	 case 1
		 $ForcedSideCSV = "|TOP-LEFT   "
	 case 2
		 $ForcedSideCSV = "|TOP-RIGHT  "
     case 3
		 $ForcedSideCSV = "|BOTTOM-LEFT"
     Case 4
		 $ForcedSideCSV = "|BOTTOM-RIGHT"
	 case 5
		 $ForcedSideCSV = "|RANDOM     "
   EndSwitch




EndFunc
