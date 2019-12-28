; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Update
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (28th December 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================

Func TryUpdate()

	Global $connect = _GetNetworkConnect()
	;~ If $connect Then
	;~     MsgBox(64, "Connections", $connect)
	;~ Else
	;~     MsgBox(48, "Warning", "There is no connection")
	;~ EndIf
	FileDelete(@ScriptDir & "\update.exe"); this will delete the update exe file if exist
	Global $serverVersionFile = "https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/version.txt";create a txt file in your webhosting account and only include your software version in it, for example: 2.0.0.0
	Global $serverUpdateExe = "https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/update.exe"
	Global $Getversion = StringStripWS(_INetGetSource($serverVersionFile),2)
	If not $connect and $Program_Version <> _INetGetSource($serverVersionFile) Then
		While 1
			Local $DecideConnection = MsgBox($MB_OKCANCEL, "AUTO UPDATE", "There is no internet connection. If you want to wait Click OK or Click Cancel to skip update.")
			If $DecideConnection = 2 Then
				ExitLoop
			Else
				$DecideConnection
			EndIf
			If $connect Then ExitLoop
			Sleep(500)
		WEnd
	EndIf

	If $connect Then
	;~ 	MsgBox($MB_OK,"AUTO UPDATE","Program versiyon = "& $Program_Version)
	;~ 	MsgBox($MB_OK,"AUTO UPDATE","Internet versiyon = "& $Getversion)

		if String($Program_Version) = String($Getversion) Then
			MsgBox($MB_OK,"AUTO UPDATE","Your Version is Last version (" & String($Program_Version) &"). It will start loading in a second..",3)
	;~ 		MsgBox($MB_OK,"AUTO UPDATE","nothing")
		Else
			Local $decideupdate = MsgBox($MB_OKCANCEL,"AUTO UPDATE","Your Version is Old (" & String($Program_Version) &"). Program will be updated automaticly. Please Click OK to go on or click CANCEL to skip update.")
			If $decideupdate = 1 Then
	;~ 			MsgBox($MB_OK,"AUTO UPDATE","click ok decide option")
				FileDelete(@ScriptDir & "\update.exe"); this will delete the update exe file if exist

				$FileSize = InetGetSize ("https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/update.exe")
				$GuiProgress = GUICreate ("Downloading" ,360, 75, @DesktopWidth/2-350/2, @DesktopHeight/2-23/2, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE,$WS_EX_COMPOSITED))
				GUISetIcon(@ScriptDir & "\USE\csv.ico",$GuiProgress)
				$ProgressBar = GUICtrlCreateProgress (5, 5, 350, 20)
				GUISetState ( @SW_SHOW )
				$Download = InetGet($serverUpdateExe, @ScriptDir & "\update.exe", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
				Local $InfoData
				Do
					$InfoData = InetGetInfo ($Download)
					If Not @error Then
						$InetGet = $InfoData[0]
						$DownloadPercent = Round ((100 * $InetGet ) / $FileSize)
						$DownloadPercent = _Min (_Max (1, $DownloadPercent), 99)
						GUICtrlSetData ($ProgressBar, $DownloadPercent)
						$Label = GUICtrlCreateLabel ('Progress : ' & $DownloadPercent & ' %', 5, 25, 350, 20)
					EndIf
					Sleep ( 100 )
				Until $InfoData[2] = True
				$_Label = GUICtrlCreateLabel ( 'Download successfull !', 5, 25, 350, 20 )
				Sleep (1000)
				Local $UpdateFileExists
				if FileExists(@ScriptDir & "\update.exe") Then
					$UpdateFileExists = True
				Else
					$UpdateFileExists= False
				EndIf
				if $UpdateFileExists Then
	;~ 				MsgBox($MB_OK,"AUTO UPDATE","file exist")
					MsgBox($MB_OK,"AUTO UPDATE","Update (" & String($Getversion) &") is downloaded. Please Do not Close Program.. INSTALLING..")
					ShellExecute("update.exe","",@ScriptDir)
					Exit
				Else
					While 1
						Local $DecideRetryToUpdate = MsgBox($MB_OKCANCEL,"AUTO UPDATE","Update error detected Likely cause: Firewall/Antivirus prevented the download or You Have Internet Connection Problem. Will You ReTry? Click OK to ReTry or Cancel for skipping AutoUpdate.")
						If $DecideRetryToUpdate = 2 Then
	;~ 						MsgBox($MB_OK,"AUTO UPDATE","retry cancel")
							MsgBox($MB_OK,"AUTO UPDATE","Without Update, Csv Maker probably will have some bugs or will not work. Good Luck.")
							ExitLoop
						Else
	;~ 						MsgBox($MB_OK,"AUTO UPDATE","retry ok")
							FileDelete(@ScriptDir & "\update.exe"); this will delete the update exe file if exist
							InetGet($serverUpdateExe, @ScriptDir & "\update.exe", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
							Sleep (1000)
							if $UpdateFileExists Then
	;~ 							MsgBox($MB_OK,"AUTO UPDATE","retry ok file exist")
								MsgBox($MB_OK,"AUTO UPDATE","Update (" & String($Getversion) &") is downloaded. Please Do not Close Program.. INSTALLING..")
								ShellExecute("update.exe","",@ScriptDir)
								Exit
								ExitLoop
							EndIf
						EndIf
					WEnd
				EndIf
			Else
				MsgBox($MB_OK,"AUTO UPDATE","Without Update Csv Maker (" & String($Program_Version) &") probably will have some bugs or will not work. Good Luck.")
	;~ 			MsgBox($MB_OK,"AUTO UPDATE","decide update cancel")
			EndIf
		EndIf
	EndIf
EndFunc

Func _GetNetworkConnect()
    Local Const $NETWORK_ALIVE_LAN = 0x1  ;net card connection
    Local Const $NETWORK_ALIVE_WAN = 0x2  ;RAS (internet) connection
    Local Const $NETWORK_ALIVE_AOL = 0x4  ;AOL

    Local $aRet, $iResult

    $aRet = DllCall("sensapi.dll", "int", "IsNetworkAlive", "int*", 0)

    If BitAND($aRet[1], $NETWORK_ALIVE_LAN) Then $iResult &= "" & @LF
    If BitAND($aRet[1], $NETWORK_ALIVE_WAN) Then $iResult &= "" & @LF
    If BitAND($aRet[1], $NETWORK_ALIVE_AOL) Then $iResult &= "" & @LF

    Return $iResult
EndFunc
