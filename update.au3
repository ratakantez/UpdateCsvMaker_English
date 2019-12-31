#include <InetConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <WinAPI.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <winapiex.au3>
#include <StringConstants.au3>
#include <WinAPIMisc.au3>
#include <IE.au3>
#include <INet.au3>
#include <WinAPIFiles.au3>
#include <Math.au3>
#include <StaticConstants.au3>
#include <ColorConstantS.au3>
#include <Array.au3>
#include <GuiListView.au3>
#include <FontConstants.au3>
#include <String.au3>
#include <ProgressConstants.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <InetConstants.au3>
#include <GDIPlus.au3>

Global $URLd
Global $UpdateGui
Global $ProgressUpdating
Global $ProgressLabel
Global $EXEButton
Global $Au3Button



$UpdateGui = GUICreate("CSV MAKER UPDATE", 450, 180, @DesktopWidth/2-450/2, @DesktopHeight/2-180/2, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE,$WS_EX_COMPOSITED))
GUISetBkColor(0xFFFF99)
$Au3Button = GUICtrlCreateButton("Run as Au3", 56, 94, 149, 33)
GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000080)
GUICtrlSetState(-1, $GUI_HIDE)
GUICtrlSetState(-1, $GUI_DISABLE)

$EXEButton = GUICtrlCreateButton("Run as EXE", 252, 94, 149, 33)
GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetBkColor(-1, 0x000080)
GUICtrlSetState(-1, $GUI_HIDE)
GUICtrlSetState(-1, $GUI_DISABLE)

$ProgressUpdating = GUICtrlCreateProgress(56, 26, 341, 50, $WS_BORDER)
$ProgressLabel = GUICtrlCreateLabel("Installing", 60, 80, 350, 50)
GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
GUICtrlSetColor(-1, 0x000080)
Sleep(2000)
GUISetState(@SW_SHOW)


Update() ;Update Starts, User has no control until it finishes

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Au3Button
			ShellExecute("Csv Maker.au3","","","Run")
			Sleep(1000)
			Exit
		Case $EXEButton
			ShellExecute("Csv Maker.exe")
			Sleep(1000)
			Exit
	EndSwitch
WEnd

Func Update()
	Local $n = 150
	Local $Count = 149
	Local $FileNumber
	Local $hDownload
	Local $StatusDownload
	DirCreate(@ScriptDir & "\Cursor")
	;~ ##########################CURSOR FOLDER############################################
	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/Archer.cur"
	InetGet($URLd,@ScriptDir & "\Cursor\Archer.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, String(Round((100/$n)*($n-$Count))))
	$Count = $Count - 1
	Sleep(250)

	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/babydragon.cur"
	InetGet($URLd,@ScriptDir & "\Cursor\babydragon.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, String(Round((100/$n)*($n-$Count))))
	$Count = $Count - 1
	Sleep(250)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/baloon.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\baloon.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
	Sleep(250)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/Barbarian.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\Barbarian.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
	Sleep(250)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/BattleB.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\BattleB.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
	Sleep(250)

	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/bowler.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\bowler.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
	Sleep(250)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/BtSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\BtSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)

	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/castle.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\castle.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)

	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/CSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\CSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/dragon.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\dragon.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/Edrag.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\Edrag.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/ESpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\ESpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)

	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/FSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\FSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/giant.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\giant.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/goblin.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\goblin.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/golem.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\golem.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/HaSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\HaSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/healer.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\healer.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/hogrider.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\hogrider.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/HSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\HSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/IceGolem.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\IceGolem.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/JSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\JSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/king.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\king.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/lava.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\lava.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/LSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\LSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/miner.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\miner.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/minion.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\minion.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/pekka.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\pekka.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/PSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\PSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/queen.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\queen.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/royal.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\royal.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/RSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\RSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/SkSpell.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\SkSpell.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/StoneS.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\StoneS.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/valkyre.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\valkyre.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/wallbreaker.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\wallbreaker.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/WallW.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\WallW.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/warden.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\warden.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/witch.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\witch.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Cursor/wizard.cur"
	$hDownload = InetGet($URLd,@ScriptDir & "\Cursor\wizard.cur", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	;~ ;##################Add more file if you need...###########################################
	;~ $URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/.../....." ;#####
	;~ $hDownload = InetGet($URLd,@ScriptDir & "\....\......", $INET_FORCERELOAD, $INET_DOWNLOADWAIT);#
	;~ ;##################Delete more file if you need...########################################
	;~ FileDelete(@ScriptDir & "\......"); this will delete if file is exist and not necessary ;#
	;~ ;#########################CURSOR FOLDER END###############################################



	;~ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	;~ ##########################USE FOLDER############################################
	DirCreate(@ScriptDir & "\USE")
	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/air.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\air.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/BG.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\BG.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/csv.ico"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\csv.ico", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/csv.png"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\csv.png", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/collector.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\collector.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/DarkElixir.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\DarkElixir.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/Drill.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\Drill.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/eagle.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\eagle.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/ElixirStorage.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\ElixirStorage.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/exit.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\exit.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/GoldStorage.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\GoldStorage.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/inferno.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\inferno.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/Info.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\Info.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/info2.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\info2.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/Mine.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\Mine.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/loading.png"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\loading.png", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/mortar.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\mortar.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/saveandexit.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\saveandexit.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/scattershot.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\scattershot.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/sidebarbar.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\sidebarbar.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/SPELL_last.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\SPELL_last.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/TH.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\TH.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/think_barbarian.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\think_barbarian.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/troops_LAST.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\troops_LAST.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)




	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/Wizz.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\Wizz.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/USE/xbow.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\USE\xbow.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)



	;~ ###################Add more file if you need...###########################################
	;~ $URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/.../....." ;#####
	;~ $hDownload = InetGet($URLd,@ScriptDir & "\....\......", $INET_FORCERELOAD, $INET_DOWNLOADWAIT);#
	;~ ###################Delete more file if you need...########################################
	;~ FileDelete(@ScriptDir & "\......"); this will delete if file exist and is not necessary ;#
	;~ #############################USE FOLDER END###############################################

	;~ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	;~ ##########################ICON FOLDER############################################
	DirCreate(@ScriptDir & "\Icon")
	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Archer.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Archer.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/BabyDragon.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\BabyDragon.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Balloon.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Balloon.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Barbarian.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Barbarian.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/BaSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\BaSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/BattleB.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\BattleB.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/CSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\CSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Dragon.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Dragon.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Electro.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Electro.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/ESpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\ESpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/FSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\FSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Giant.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Giant.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Goblin.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Goblin.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Golem.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Golem.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/HaSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\HaSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Healer.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Healer.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Hogs.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Hogs.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/HSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\HSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/IceGolem.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\IceGolem.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/JSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\JSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/king.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\king.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/lava.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\lava.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Miner.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Miner.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/mini.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\mini.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/pekka.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\pekka.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/PSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\PSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/queen.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\queen.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/RoyaleC.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\RoyaleC.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/siegeB.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\siegeB.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/SkSpell.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\SkSpell.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/StoneS.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\StoneS.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Valkyre.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Valkyre.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/WallB.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\WallB.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/WallW.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\WallW.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/warden.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\warden.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/witch.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\witch.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/witch.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\witch.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/Wizzard.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\Wizzard.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Icon/yeti.bmp"
	$hDownload = InetGet($URLd,@ScriptDir & "\Icon\yeti.bmp", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	;~ ;##################Add more file if you need...###########################################
	;~ $URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/.../....." ;#####
	;~ $hDownload = InetGet($URLd,@ScriptDir & "\....\......", $INET_FORCERELOAD, $INET_DOWNLOADWAIT);#
	;~ ;##################Delete more file if you need...########################################
	;~ FileDelete(@ScriptDir & "\......"); this will delete if file is exist and not necessary ;#
	;~ ;#########################Icon FOLDER END#################################################

	;~ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	;~ ##########################FUNC AND GUI FOLDER############################################
	DirCreate(@ScriptDir & "\FuncAndGui")
	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/AddNotes.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\AddNotes.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/DropFunc.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\DropFunc.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/Gui.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\Gui.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/Hotkeys.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\Hotkeys.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/MakeFile.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\MakeFile.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/SideFile.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\SideFile.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/TrainGui.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\TrainGui.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/Update.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\Update.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/Variable.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\Variable.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/FuncAndGui/WaitFunc.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\FuncAndGui\WaitFunc.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
	Sleep(1000)
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)



	;~ ;##################Add more file if you need...###########################################
	;~ $URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/.../....." ;#####
	;~ $hDownload = InetGet($URLd,@ScriptDir & "\....\......", $INET_FORCERELOAD, $INET_DOWNLOADWAIT);#
	;~ ;##################Delete more file if you need...########################################
	;~ FileDelete(@ScriptDir & "\......"); this will delete if file is exist and not necessary ;#
	;~ ;#########################FUNC AND GUI FOLDER END#########################################

	;~ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	;~ ##########################MAIN FOLDER############################################
	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/Csv%20Maker.au3"
	$hDownload = InetGet($URLd,@ScriptDir & "\Csv Maker.au3", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://github.com/ratakantez/UpdateCsvMaker_English/blob/master/Csv%20Maker.exe?raw=true"
	$hDownload = InetGet($URLd,@ScriptDir & "\Csv Maker.exe", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/LICENSE"
	$hDownload = InetGet($URLd,@ScriptDir & "\LICENSE", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,$FileNumber & " File Updated")
	GUICtrlSetData($ProgressUpdating, (100/$n)*($n-$Count) )
	$Count = $Count - 1
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)


	$URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/README.md"
	$hDownload = InetGet($URLd,@ScriptDir & "\README.md", $INET_FORCERELOAD, $INET_DOWNLOADWAIT)
	$FileNumber = $n-$Count
	GUICtrlSetData($ProgressLabel,"All File Updated...")
	GUICtrlSetData($ProgressUpdating, 100 )
    ;Do
        ;Sleep(250)
    ;Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)
	Sleep(1000)
	GUICtrlSetData($ProgressLabel,"Update Will Close automaticaly")
	Sleep(1000)
	GUICtrlSetData($ProgressLabel,"CSV MAKER is Starting...")
	Sleep(1000)

	;~ ;##################Add more file if you need...###########################################
	;~ $URLd ="https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/.../....." ;#####
	;~ $hDownload = InetGet($URLd,@ScriptDir & "\....\......", $INET_FORCERELOAD, $INET_DOWNLOADWAIT);#
	;~ ;##################Delete more file if you need...########################################
	;~ FileDelete(@ScriptDir & "\......"); this will delete if file is exist and not necessary ;#
	;~ ;#################################MAIN FOLDER END#########################################

	GUICtrlSetState($Au3Button, $GUI_SHOW)
	GUICtrlSetState($Au3Button, $GUI_ENABLE)
	GUICtrlSetState($EXEButton, $GUI_SHOW)
	GUICtrlSetState($EXEButton, $GUI_ENABLE)
	GUICtrlSetState($ProgressLabel, $GUI_HIDE)

	For $i = 1 To 5
		Local $second =6-$i
		Local $Handle = "CSV MAKER UPDATER ("&$second&")"
		WinSetTitle($UpdateGui,"",$Handle)
		Sleep(1000)
		If $i=5 Then
			If FileExists(@ScriptDir & "\Csv Maker.exe") Then
				ShellExecute("Csv Maker.exe","",@ScriptDir)
				Sleep(1000)
				Exit
			Else
				ShellExecute("Csv Maker.au3","","","Run")
				Sleep(1000)
				ShellExecute("https://www.autoitscript.com/forum/topic/34658-are-my-autoit-exes-really-infected/")
				MsgBox($MB_OK,"WARNING", "Probably your Firewall/Antivirus prevented the exe file to open. This Program is open source and you can not find any virus in codes. Now Program opened a web page what you are woried about. Good Luck!")
				Exit

			EndIf

		EndIf
	Next


EndFunc