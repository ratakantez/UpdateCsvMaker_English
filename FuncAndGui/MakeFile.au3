
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

;Create a csv file
Func OpenPlace()
   	If Not FileExists(@ScriptDir & "\CSVFiles") Then DirCreate(@ScriptDir & "\CSVFiles")

	  $g_sSaveLocation = @ScriptDir & "\CSVFiles\" & GUICtrlRead($FileInput) & ".csv"
	For $Filenumber = 1 To $infinity
		if FileExists($g_sSaveLocation) Then
			$g_sSaveLocation = @ScriptDir & "\CSVFiles\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".csv"
		EndIf
		if not FileExists($g_sSaveLocation) Then
			ExitLoop
		EndIf

	Next
FileOpen($g_sSaveLocation,0)
EndFunc

Func OpenAndSaveLog()
      	If Not FileExists(@ScriptDir & "\Log") Then DirCreate(@ScriptDir & "\Log")

   	  $g_lSaveLocation =  @ScriptDir & "\Log\" & GUICtrlRead($FileInput) & ".log"
	For $Filenumber = 1 To $infinity
		if FileExists($g_lSaveLocation) Then
			$g_lSaveLocation = @ScriptDir & "\Log\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".log"
		EndIf
		if not FileExists($g_lSaveLocation) Then
			ExitLoop
		EndIf

	Next
FileOpen($g_lSaveLocation,0)
For $i = 1 to Number(_GUICtrlRichEdit_GetLineCount($LOG))
   FileWrite($g_lSaveLocation, _GUICtrlRichEdit_GetTextInLine($LOG,$i) & @CRLF)
FileClose($g_lSaveLocation)
Next

EndFunc


Func GetRandomXY()

			If StringLen(String(GUICtrlRead($txtRandomX))) = 1 Then
			   $InputRandomX = String(Guictrlread($txtRandomX)) & "          "
			ElseIf StringLen(String(GUICtrlRead($txtRandomX))) = 2 Then
			   $InputRandomX = String(Guictrlread($txtRandomX)) & "         "
			EndIf


			If StringLen(String(GUICtrlRead($txtRandomY))) = 1 Then
			   $InputRandomY = String(Guictrlread($txtRandomY)) & "          "
			ElseIf StringLen(String(GUICtrlRead($txtRandomY))) = 2 Then
			   $InputRandomY = String(Guictrlread($txtRandomY)) & "         "
			EndIf

EndFunc



Func WriteNormalMakeCommand()

FileWrite($g_sSaveLocation, $MakeEnter)

FileWrite($g_sSaveLocation,$Make_A_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_B_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_C_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_D_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_E_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_F_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_G_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_H_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus2)
FileWrite($g_sSaveLocation, @CRLF)




EndFunc


Func WriteRandomMakeCommand()

FileWrite($g_sSaveLocation, $MakeEnter)

 $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"


FileWrite($g_sSaveLocation,$Make_A_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_B_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_C_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_D_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_E_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_F_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_G_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_H_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus2)
FileWrite($g_sSaveLocation, @CRLF)
 $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"



EndFunc
