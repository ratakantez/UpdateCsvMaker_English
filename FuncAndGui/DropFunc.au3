
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Variable
; Description ...:
; Syntax ........:
; Parameters ... -: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================


Func DropCommand()


   ;First FindDropPoint
	GetSleepSize()
	;Army Sides
	_ifSide_is_A_On_Army()
	_ifSide_is_B_On_Army()
	_ifSide_is_C_On_Army()
	_ifSide_is_D_On_Army()
	_ifSide_is_E_On_Army()
	_ifSide_is_F_On_Army()
	_ifSide_is_G_On_Army()
	_ifSide_is_H_On_Army()


	If GUICtrlRead($CheckBuilding) = $GUI_UNCHECKED Then
		 GetSleepSize()
		;;;;;;;;;;SF
		_ifSide_is_SF_On_Spell ()
		;;;;;;;;;;SE
		_ifSide_is_SE_On_Spell()

	EndIf

	If GUICtrlRead($CheckBuilding) = $GUI_CHECKED Then
		GetSleepSize()
		;;;;;;;;;;;Building
		_ifSide_is_Building_On_Spell()

	EndIf
		 WaitCommandCSV()
;Second AddToCSV
CSVWriteDrop()





EndFunc

Func GetSleepSize()
	$GetSleep1 = GUICtrlRead($SleepInput1)
	$GetSleep2 = GUICtrlRead($SleepInput2)

			If StringLen(String(GUICtrlRead($SleepInput1))) = 1 Then
				If StringLen(String(GUICtrlRead($SleepInput2))) = 1 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "        "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 2 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "       "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 3 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "      "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 4 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "     "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 5 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "    "
				EndIf
			ElseIf StringLen(String(GUICtrlRead($SleepInput1))) = 2 Then
				If StringLen(String(GUICtrlRead($SleepInput2))) = 1 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "       "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 2 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "      "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 3 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "     "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 4 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "    "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 5 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "   "
				EndIf
			ElseIf StringLen(String(GUICtrlRead($SleepInput1))) = 3 Then
				If StringLen(String(GUICtrlRead($SleepInput2))) = 1 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "      "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 2 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "     "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 3 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "    "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 4 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "   "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 5 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "  "
				EndIf
			ElseIf StringLen(String(GUICtrlRead($SleepInput1))) = 4 Then
				If StringLen(String(GUICtrlRead($SleepInput2))) = 1 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "     "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 2 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "    "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 3 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "   "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 4 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "  "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 5 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & " "
				EndIf
			ElseIf StringLen(String(GUICtrlRead($SleepInput1))) = 5 Then
				If StringLen(String(GUICtrlRead($SleepInput2))) = 1 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "    "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 2 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "   "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 3 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & "  "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 4 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2)) & " "
				ElseIf StringLen(String(GUICtrlRead($SleepInput2))) = 5 Then
					$ADDSleepCSV = String(GUICtrlRead($SleepInput1)) & "-" & String(GUICtrlRead($SleepInput2))
				EndIf
			EndIf

EndFunc



Func _ifSide_is_A_On_Army()
	if $SideType = "_A" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
			     $DropPoint = "DROP  |A          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				 $DropPoint = "DROP  |A          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				 $DropPoint = "DROP  |A          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				 $DropPoint = "DROP  |A          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				 $DropPoint = "DROP  |A          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				 $DropPoint = "DROP  |A          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				 $DropPoint = "DROP  |A          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				 $DropPoint = "DROP  |A          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				 $DropPoint = "DROP  |A          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				 $DropPoint = "DROP  |A          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |A          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |B          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |B          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |B          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |B          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |B          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |B          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |B          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |B          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |B          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |B          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |B          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 2 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |C          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |C          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |C          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |C          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |C          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |C          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |C          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |C          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then

				$DropPoint = "DROP  |C          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |C          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		EndIf
	EndIf


EndFunc


Func _ifSide_is_B_On_Army()

if $SideType = "_B" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |D          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |D          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |D          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |D          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |D          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |D          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |D          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |D          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |D          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |D          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |D          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |C          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |E          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |E          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |E          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |E          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |E          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |E          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |E          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |E          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |E          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |E          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |E          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 2 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |F          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |F          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |F          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |F          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |F          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |F          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |F          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |F          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then

				$DropPoint = "DROP  |F          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |F          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |F          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		EndIf
	 EndIf

EndFunc

Func _ifSide_is_C_On_Army()
	if $SideType = "_C" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |G          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |G          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |G          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |G          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |G          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |G          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |G          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |G          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |G          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |G          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |G          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |H          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |H          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |H          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |H          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |H          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |H          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |H          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |H          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |H          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |H          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |H          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 2 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |I          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |I          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |I          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |I          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |I          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |I          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |I          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |I          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then

				$DropPoint = "DROP  |I          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |I          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |I          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		EndIf
	EndIf
EndFunc







Func _ifSide_is_D_On_Army()

	if $SideType = "_D" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |J          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |J          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |J          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |J          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |J          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |J          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |J          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |J          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |J          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |J          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |J          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |K          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |K          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |K          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |K          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |K          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |K          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |K          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |K          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |K          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |K          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |K          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 2 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |L          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |L          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |L          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |L          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |L          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |L          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |L          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |L          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then

				$DropPoint = "DROP  |L          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |L          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |L          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		EndIf
	 EndIf

EndFunc


Func _ifSide_is_E_On_Army()


	if $SideType = "_E" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |M          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |M          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |M          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |M          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |M          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |M          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |M          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |M          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |M          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |M          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |M          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |N          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |N          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |N          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |N          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |N          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |N          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |N          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |N          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |N          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |N          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |N          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 2 Then
			    if $SideNumber = 1 Then
				$DropPoint = "DROP  |O          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |O          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |O          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |O          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |O          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |O          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |O          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |O          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then

				$DropPoint = "DROP  |O          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then

				$DropPoint = "DROP  |O          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |O          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		EndIf
	 EndIf


EndFunc


Func _ifSide_is_F_On_Army()



	if $SideType = "_F" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |P          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |P          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |P          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |P          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |P          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |P          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |P          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |P          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |P          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |P          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |P          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |Q          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |Q          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |Q          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |Q          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |Q          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |Q          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |Q          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |Q          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |Q          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |Q          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |Q          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			EndIf

		Elseif $AddTile = 2 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |R          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |R          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |R          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |R          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |R          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |R          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |R          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |R          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |R          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |R          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |R          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			EndIf

		EndIf
	 EndIf

EndFunc

Func _ifSide_is_G_On_Army()

	if $SideType = "_G" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |S          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |S          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |S          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |S          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |S          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |S          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |S          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |S          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |S          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |S          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |S          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
				if $SideNumber = 1 Then
				$DropPoint = "DROP  |T          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |T          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |T          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |T          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |T          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |T          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |T          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |T          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |T          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |T          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |T          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			EndIf

		Elseif $AddTile = 2 Then
				if $SideNumber = 1 Then
				$DropPoint = "DROP  |U          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |U          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |U          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |U          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |U          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |U          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |U          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |U          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |U          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |U          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |U          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			EndIf

		EndIf
	 EndIf

EndFunc

Func _ifSide_is_H_On_Army()




	if $SideType = "_H" Then
	   $chooseMake = 1
		if $AddTile = 0 Then
			if $SideNumber = 1 Then
				$DropPoint = "DROP  |V          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |V          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |V          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |V          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |V          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |V          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |V          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |V          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |V          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |V          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |V          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf
			EndIf

		Elseif $AddTile = 1 Then
				if $SideNumber = 1 Then
				$DropPoint = "DROP  |W          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |W          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |W          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |W          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |W          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |W          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |W          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |W          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |W          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |W          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |W          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			EndIf

		Elseif $AddTile = 2 Then
				if $SideNumber = 1 Then
				$DropPoint = "DROP  |X          |1          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 2 Then
				$DropPoint = "DROP  |X          |2          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 3 Then
				$DropPoint = "DROP  |X          |3          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment

				 EndIf

			elseif 	$SideNumber = 4 Then
				$DropPoint = "DROP  |X          |4          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 5 Then
				$DropPoint = "DROP  |X          |5          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 6 Then
				$DropPoint = "DROP  |X          |6          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 7 Then
				$DropPoint = "DROP  |X          |7          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 8 Then
				$DropPoint = "DROP  |X          |8          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 9 Then
				$DropPoint = "DROP  |X          |9          |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			elseif 	$SideNumber = 10 Then
				$DropPoint = "DROP  |X          |10         |1          |" & $TName & "|50-70      |0          |100-120    |           |           |... - " & $Comment
				 If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					GetSleepSize()
					$DropPoint = "DROP  |X          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment
				 EndIf

			EndIf


		EndIf
	 EndIf
EndFunc



Func _ifSide_is_SF_On_Spell ()
					GetSleepSize()
					GetRandomXY()
		if $SpellSideType = "_SF" Then
			$chooseMake = 0
		   if $AddTile = "-2" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-4" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-6" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-8" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-10" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-12" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-14" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-16" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-18" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-20" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-22" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-24" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-26" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-28" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-30" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-32" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-36" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf




	EndIf


EndFunc



Func _ifSide_is_SE_On_Spell()
					GetSleepSize()
					GetRandomXY()
		if $SpellSideType = "_SE" Then
			$chooseMake = 0
		   if $AddTile = "-2" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-4" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-6" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-8" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "         |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "         |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-10" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-12" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-14" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1  Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-16" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 10 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |10         |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |10         |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-18" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1  Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-20" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-22" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 10 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-24" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1  Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-26" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1  Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-28" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1  Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-30" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-32" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf

		   if $AddTile = "-36" Then
			   if $SpellSideNumber = 2 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |2          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf

			   EndIf
			   if $SpellSideNumber = 3 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |3          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 4 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |4          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 5 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |5          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 6 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |6          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 7 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |7          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 8 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |8          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 9 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |9          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf
			   if $SpellSideNumber = 1 Then
					$MakeSpell = $Make_SE & $AddTile & "        |INT-EXT    |0          |0          |           |           |" & @CRLF
					 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
						$MakeSpell = $Make_SF & $AddTile & "        |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |" & @CRLF
					 EndIf
					$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
					If GUICtrlRead($Sleep) = $GUI_CHECKED Then
						$DropPoint = "DROP  |Y          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
					EndIf
			   EndIf


		   EndIf




	EndIf

EndFunc


Func  _ifSide_is_Building_On_Spell()
					GetSleepSize()
					GetRandomXY()
		if GUICtrlRead($RadioWall1) = $GUI_CHECKED Then
			$SpellOnBuildingName = "EX-WALL    |"
			$LogBuilding = "First Most Outer Wall"
		EndIf

		If GUICtrlRead($RadioWall2) = $GUI_CHECKED Then
			$SpellOnBuildingName = "IN-WALL    |"
			$LogBuilding = "Second Most Outer Wall"
		EndIf

		if GUICtrlRead($RadioEagle) = $GUI_CHECKED Then
			$SpellOnBuildingName = "EAGLE      |"
			$LogBuilding = "Eagle Artillery"
		endif

		if GUICtrlRead($RadioInferno) = $GUI_CHECKED Then
			$SpellOnBuildingName = "INFERNO    |"
			$LogBuilding = "Inferno Tower"
		EndIf

		if GUICtrlRead($RadioXbow) = $GUI_CHECKED Then
			$SpellOnBuildingName = "XBOW       |"
			$LogBuilding = "X-Bow"
		EndIf

		If GUICtrlRead($RadioWizzTower) = $GUI_CHECKED Then
			$SpellOnBuildingName = "WIZTOWER   |"
			$LogBuilding = "Wizzard Tower"
		EndIf

		if GUICtrlRead($RadioAirDefense) = $GUI_CHECKED Then
			$SpellOnBuildingName = "AIRDEFENSE |"
			$LogBuilding = "Air Defense"
		EndIf

		if GUICtrlRead($RadioScatterShot) = $GUI_CHECKED Then
			$SpellOnBuildingName = "SCATTER    |"
			$LogBuilding = "Scatter Shot"
		EndIf

		If GUICtrlRead($RadioTH) = $GUI_CHECKED Then
			$SpellOnBuildingName = "TOWNHALL   |"
			$LogBuilding = "Town Hall"
		EndIf

		if GUICtrlRead($RadioMortar) = $GUI_CHECKED Then
			$SpellOnBuildingName = "MORTAR     |"
			$LogBuilding = "Mortar"
		EndIf


		If GUICtrlRead($CheckBuilding) = $GUI_CHECKED And $TType = "Spell" Then
			$chooseMake = 0
			$MakeSpell = $Make_SF & "0          |IGNORE     |0          |0          |" & $SpellOnBuildingName  & @CRLF
			 If GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then
				$MakeSpell = $Make_SF & "0          |IGNORE     |" &$InputRandomX& "|" &$InputRandomY& "|" & $SpellOnBuildingName  & "           |" & @CRLF
			 EndIf
			$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |50-70      |           |           |... - " & $Comment & @CRLF
				If GUICtrlRead($Sleep) = $GUI_CHECKED Then
					$DropPoint = "DROP  |Z          |1          |1          |" & $TName & "|50-70      |0          |" & $ADDSleepCSV & "|           |           |... - " & $Comment & @CRLF
				EndIf
		EndIf


EndFunc



Func CSVWriteDrop()
					GetSleepSize()



					;In First Step!!!
	if $FirstAdding = True Then
	  if $TType = "Spell" Then
		 FileWrite($g_sSaveLocation, @CRLF)
		 FileWrite($g_sSaveLocation,$MakeEnter)
		 FileWrite($g_sSaveLocation,$MakeSpell)
		 FileWrite($g_sSaveLocation,$DropEnter)
		 FileWrite($g_sSaveLocation,$DropPoint)
		 FileWrite($g_sSaveLocation, @CRLF)
		 $ShouldICreateMakeFORArmy = True

	  EndIf
	  if $TType = "Army" Then
			if GUICtrlRead($AddRandomXandY) = $GUI_CHECKED Then

			Else
				WriteNormalMakeCommand()
			EndIf

		 FileWrite($g_sSaveLocation, @CRLF)
		 FileWrite($g_sSaveLocation,$DropEnter)
		 FileWrite($g_sSaveLocation,$DropPoint)
		 FileWrite($g_sSaveLocation, @CRLF)
		EndIf
   EndIf



   if $FirstAdding = False Then
		if $TType = "Spell" Then
			FileWrite($g_sSaveLocation, @CRLF)
			FileWrite($g_sSaveLocation,$MakeEnter)
			FileWrite($g_sSaveLocation,$MakeSpell)
			FileWrite($g_sSaveLocation,$DropEnter)
			FileWrite($g_sSaveLocation,$DropPoint)
			WaitCommandCSV()
			FileWrite($g_sSaveLocation,$WaitCommandCSV)
			$ShouldICreateMakeFORArmy = True

		EndIf

		If $TType = "Army" Then
			if $ShouldICreateMakeFORArmy = True Then
				FileWrite($g_sSaveLocation, @CRLF)
				WriteNormalMakeCommand()
				FileWrite($g_sSaveLocation, @CRLF)
				FileWrite($g_sSaveLocation,$DropEnter)
				FileWrite($g_sSaveLocation,$DropPoint)
				FileWrite($g_sSaveLocation, @CRLF)
			ElseIf $ShouldICreateMakeFORArmy = False Then
			    FileWrite($g_sSaveLocation,$DropPoint)
				FileWrite($g_sSaveLocation, @CRLF)
			EndIf
			WaitCommandCSV()
			FileWrite($g_sSaveLocation,$WaitCommandCSV)
			$ShouldICreateMakeFORArmy = False

		EndIf

   EndIf



EndFunc

Func AddWaitCommand ()
   If GUICtrlRead($CheckWait) = $GUI_CHECKED Then
	     GetWaitInputSize ()
		 FileWrite($g_sSaveLocation,$WaitCommandCSV)
   EndIf
EndFunc






