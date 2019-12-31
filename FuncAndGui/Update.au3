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
 	 	;MsgBox($MB_OK,"AUTO UPDATE","Program versiyon = "& $Program_Version)
		;MsgBox($MB_OK,"AUTO UPDATE","Internet versiyon = "& $Getversion)

		if String($Program_Version) = String($Getversion) Then
			MsgBox($MB_OK,"AUTO UPDATE","Your Version is Last version (" & String($Program_Version) &"). It will start loading in a second..",3)
;~ 	 		MsgBox($MB_OK,"AUTO UPDATE","nothing")
		Else
			Local $decideupdate = MsgBox($MB_OKCANCEL,"AUTO UPDATE","Your Version is Old (" & String($Program_Version) &"). Program will be updated automaticly. Please Click OK Or Wait to go on or click CANCEL to skip update.")
			If $decideupdate = 1 Then

				Local $Key1 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
				Local $Key2 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
				Local $Key3 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
				Local $Key4 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\AutoIt v3\AutoIt","Version")
				Local $Key5 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\AutoIt v3\AutoIt","Version")
				Local $Key6 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\AutoIt v3\AutoIt","Version")

				If String($Key1)= "" And String($Key2)= "" And String($Key3)= "" And String($Key4)= "" And String($Key5)= "" And String($Key6)= ""  Then
					Local $AutoitInstall = "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe"
					MsgBox($MB_OK,"WARNING","Program detect that you dont have AutoIt and update will download and open Autoit Installer for once. After you install Autoit Program will go on to update CSV Maker.Update and CSV Maker may not work well without Autoit!!!")
					$AutoitFileSize = InetGetSize ($AutoitInstall)
					$AutoitGuiProgress = GUICreate ("Downloading Autoit" ,360, 100, @DesktopWidth/2-360/2, @DesktopHeight/2-100/2, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE,$WS_EX_COMPOSITED))
					$AutoitProgressBar = GUICtrlCreateProgress (5, 5, 350, 20)
					GUISetState ( @SW_SHOW, $AutoitGuiProgress )
					$AutoitDownload = InetGet($AutoitInstall, @ScriptDir & "\autoit-v3-setup.exe", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
					Local $AutoitInfoData
					Do
						$AutoitInfoData = InetGetInfo ($AutoitDownload)
						If Not @error Then
							$AutoitInetGet = $AutoitInfoData[0]
							$AutoitDownloadPercent = Round ((100 * $AutoitInetGet ) / $AutoitFileSize)
							$AutoitDownloadPercent = _Min (_Max (1, $AutoitDownloadPercent), 99)
							GUICtrlSetData ($AutoitProgressBar, $AutoitDownloadPercent)
							$AutoitLabel = GUICtrlCreateLabel ('Progress : ' & $AutoitDownloadPercent & ' %', 5, 25, 350, 50)
						EndIf
						Sleep ( 100 )
					Until $AutoitInfoData[2] = True
					$AutoitLabel = GUICtrlCreateLabel ('Download successfull !', 5, 25, 350, 50)
					Sleep (1000)
					$AutoitLabel = GUICtrlCreateLabel ('Install AutoIt Manually. After Installation, update will go on. Please Do Not CLOSE this window.', 5, 25, 350, 50)
					Sleep(1000)
					ShellExecuteWait("autoit-v3-setup.exe","",@ScriptDir,"open" )

;~ 					_WinWaitActivate("AutoIt v3.3.14.5 Setup","Welcome to the AutoIt v3.3.14.5 Setup Wizard")
;~ 					Send("{TAB}{TAB}{ENTER}")
;~ 					winwait("AutoIt v3.3.14.5 Setup","I &Agree",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","","[CLASS:Button; INSTANCE:2")
;~ 					winwait("AutoIt v3.3.14.5 Setup","Use x86 tools by default (recommended for compatibility)",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","Use x86 tools by default (recommended for compatibility)", 1202)
;~ 					winwait("AutoIt v3.3.14.5 Setup","&Next >",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","&Next >", 1)
;~ 					winwait("AutoIt v3.3.14.5 Setup","Run the script",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","Run the script", 1201)
;~ 					winwait("AutoIt v3.3.14.5 Setup","&Next >",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","&Next >", 1)
;~ 					winwait("AutoIt v3.3.14.5 Setup","&Install",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","&Install", 1)
;~ 					winwait("AutoIt v3.3.14.5 Setup","Show release notes (check for script breaking changes)",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","Show release notes (check for script breaking changes)", 1203)
;~ 					winwait("AutoIt v3.3.14.5 Setup","&Finish",1)
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","&Finish", 1)

;~ 					Local $AutoitFinish
;~ 					Do
;~ 					$AutoitFinish = ControlGetHandle("AutoIt v3.3.14.5 Setup", "Finish", 1)
;~ 					Sleep(100)
;~ 					Until $AutoitFinish <> ""

;~ 					If ControlCommand("Personal Options", "", "[NAME:chkShortPortfolios]", "IsChecked") Then
;~ 						ControlCommand("Personal Options", "", "[NAME:chkShortPortfolios]", "Check")
;~ 					EndIf
;~ 					ControlClick ( "AutoIt v3.3.14.5 Setup","", "[CLASS:Button; TEXT:Finish")


					While 1
						Local $Key1 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
						Local $Key2 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
						Local $Key3 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
						Local $Key4 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\AutoIt v3\AutoIt","Version")
						Local $Key5 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\AutoIt v3\AutoIt","Version")
						Local $Key6 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\AutoIt v3\AutoIt","Version")

						if String($Key1)= "" And String($Key2)= "" And String($Key3)= "" And String($Key4)= "" And String($Key5)= "" And String($Key6)= ""  Then
							Sleep (1000)
						Else
							$AutoitLabel = GUICtrlCreateLabel ('Autoit Installed. Now update is begining !', 5, 25, 350, 50)
							Sleep (3000)
							GUISetState ( @SW_HIDE, $AutoitGuiProgress )
							ExitLoop
						EndIf
					WEnd

				EndIf

;~ 	 			MsgBox($MB_OK,"AUTO UPDATE","click ok decide option")
				FileDelete(@ScriptDir & "\update.exe"); this will delete the update exe file if exist
				FileDelete(@ScriptDir & "\update.au3"); this will delete the update au3 file if exist

				$FileSize = InetGetSize ("https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/update.exe")
				$GuiProgress = GUICreate ("Downloading" ,360, 75, @DesktopWidth/2-350/2, @DesktopHeight/2-23/2, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE,$WS_EX_COMPOSITED))
				GUISetIcon(@ScriptDir & "\USE\csv.ico",$GuiProgress)
				$ProgressBar = GUICtrlCreateProgress (5, 5, 350, 20)
				GUISetState ( @SW_SHOW )
				$Download2 = InetGet($serverUpdateExe, @ScriptDir & "\update.au3", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
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
				$Label = GUICtrlCreateLabel ('Download successfull !', 5, 25, 350, 20)
				Sleep (1000)
				Local $UpdateFileExistsEXE
				Local $UpdateFileExistsAU3
				if FileExists(@ScriptDir & "\update.exe") Then
					$UpdateFileExistsEXE = True
				Else
					$UpdateFileExistsEXE= False
				EndIf
				if FileExists(@ScriptDir & "\update.au3") Then
					$UpdateFileExistsAU3 = True
				Else
					$UpdateFileExistsAU3= False
				EndIf
				if $UpdateFileExistsEXE Or $UpdateFileExistsAU3 Then
;~ 	 				MsgBox($MB_OK,"AUTO UPDATE","file exist")
					MsgBox($MB_OK,"AUTO UPDATE","Update (" & String($Getversion) &") is downloaded. Please Do not Close Program and WAIT!.. INSTALLING..",4)
					if $UpdateFileExistsEXE Then
						ShellExecute("update.exe","",@ScriptDir)
					ElseIf $UpdateFileExistsAU3 Then
						ShellExecute("update.au3","","","Run")
					EndIf
					Exit
				Else
					While 1
						Local $DecideRetryToUpdate = MsgBox($MB_OKCANCEL,"AUTO UPDATE","Update error detected Likely cause: Firewall/Antivirus prevented the download or You Have Internet Connection Problem. Will You ReTry? Click OK to ReTry or Cancel for skipping AutoUpdate.")
						If $DecideRetryToUpdate = 2 Then
;~ 	 						MsgBox($MB_OK,"AUTO UPDATE","retry cancel")
							MsgBox($MB_OK,"AUTO UPDATE","Without Update, Csv Maker probably will have some bugs or will not work. Good Luck.")
							ExitLoop
						Else
;~ 	 						MsgBox($MB_OK,"AUTO UPDATE","retry ok")
							FileDelete(@ScriptDir & "\update.exe"); this will delete the update exe file if exist
							FileDelete(@ScriptDir & "\update.au3"); this will delete the update exe file if exist
							InetGet($serverUpdateExe, @ScriptDir & "\update.exe", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
							InetGet($serverUpdateExe, @ScriptDir & "\update.au3", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
							Sleep (1000)
							if $UpdateFileExistsEXE Or $UpdateFileExistsAU3 Then
;~ 								MsgBox($MB_OK,"AUTO UPDATE","retry ok file exist")
								MsgBox($MB_OK,"AUTO UPDATE","Update (" & String($Getversion) &") is downloaded. Please Do not Close Program.. INSTALLING..",3)
								if $UpdateFileExistsEXE Then
									ShellExecute("update.exe","",@ScriptDir)
								ElseIf $UpdateFileExistsAU3 Then
									ShellExecute("update.au3","","","Run")
								EndIf
								Exit
							EndIf
						EndIf
					WEnd
				EndIf
			Else
				MsgBox($MB_OK,"AUTO UPDATE","Without Update or AutoIt program, Csv Maker (" & String($Program_Version) &") probably will have some bugs or will not work. Good Luck.")
;~ 	 			MsgBox($MB_OK,"AUTO UPDATE","decide update cancel")
			EndIf
		EndIf
	EndIf
EndFunc

Func _GetNetworkConnect()
    Local Const $NETWORK_ALIVE_LAN = 0x1  ;card
    Local Const $NETWORK_ALIVE_WAN = 0x2  ;RAS
    Local Const $NETWORK_ALIVE_AOL = 0x4  ;AOL

    Local $aRet, $iResult

    $aRet = DllCall("sensapi.dll", "int", "IsNetworkAlive", "int*", 0)

    If BitAND($aRet[1], $NETWORK_ALIVE_LAN) Then $iResult &= "" & @LF
    If BitAND($aRet[1], $NETWORK_ALIVE_WAN) Then $iResult &= "" & @LF
    If BitAND($aRet[1], $NETWORK_ALIVE_AOL) Then $iResult &= "" & @LF

    Return $iResult
EndFunc
