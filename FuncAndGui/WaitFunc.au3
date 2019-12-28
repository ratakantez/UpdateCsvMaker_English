
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Wait Func
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

Func GetWaitInputSize ()
   If GUICtrlRead($WaitInput1) = GUICtrlRead($WaitInput2) Then
	  If StringLen(String(GUICtrlRead($WaitInput1))) = 1 Then
		 $SetWait = String(GUICtrlRead($WaitInput1)) & "          "
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 2 Then
		 $SetWait = String(GUICtrlRead($WaitInput1)) & "         "
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 3 Then
		 $SetWait = String(GUICtrlRead($WaitInput1)) & "        "
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 4 Then
		 $SetWait = String(GUICtrlRead($WaitInput1)) & "       "
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 5 Then
		 $SetWait = String(GUICtrlRead($WaitInput1)) & "      "
	  EndIf

   Else
	  If StringLen(String(GUICtrlRead($WaitInput1))) = 1 Then
		 If StringLen(String(GUICtrlRead($WaitInput2))) = 1 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "        "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 2 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "       "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 3 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "      "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 4 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "     "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 5 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "    "
		 EndIf
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 2 Then
		 If StringLen(String(GUICtrlRead($WaitInput2))) = 1 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "       "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 2 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "      "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 3 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "     "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 4 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "    "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 5 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "   "
		 EndIf
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 3 Then
		 If StringLen(String(GUICtrlRead($WaitInput2))) = 1 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "      "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 2 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "     "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 3 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "    "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 4 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "   "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 5 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "  "
		 EndIf
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 4 Then
		 If StringLen(String(GUICtrlRead($WaitInput2))) = 1 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "     "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 2 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "    "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 3 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "   "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 4 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "  "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 5 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & " "
		 EndIf
	  ElseIf StringLen(String(GUICtrlRead($WaitInput1))) = 5 Then
		 If StringLen(String(GUICtrlRead($WaitInput2))) = 1 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "    "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 2 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "   "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 3 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & "  "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 4 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2)) & " "
		 ElseIf StringLen(String(GUICtrlRead($WaitInput2))) = 5 Then
			$SetWait = String(GUICtrlRead($WaitInput1)) & "-" & String(GUICtrlRead($WaitInput2))
		 EndIf
	  EndIf


   EndIf



EndFunc


Func WaitCommandCSV()
	GetWaitInputSize ()

	 If GUICtrlRead($CheckWait) = $GUI_CHECKED Then
		if $WaitCommand = "           " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. and will not break time.",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "TH         " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if TH is destroyed.",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "SIEGE      " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if Siege is destroyed.",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "TH+SIEGE   " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if both TH and Siege are destroyed.",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "TH,SIEGE   " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if TH or Siege is destroyed.",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "BK         " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if King is activated.",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "AQ         " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if Queen is activated",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "GW         " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if Warden is activated",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "RC         " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if Royal Champion is activated",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "AQ+BK      " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if both King and Queen are activated",$STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		ElseIf $WaitCommand = "AQ,BK      " Then
		   $Comment2 = StringStripWS("Bot will wait " & $SetWait & " ms. , but will go on if King or Queen are activated", $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)
		EndIf
	 EndIf





   If  GUICtrlRead($CheckWait) = $GUI_CHECKED Then
	  $WaitCommandCSV = "WAIT  |" &$SetWait& "|" & $WaitCommand & "|           |           |           |           |           |           |           |... -" & $Comment2 & @CRLF
   else
	  $WaitCommandCSV = ""
   EndIf
EndFunc
