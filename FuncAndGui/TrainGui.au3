
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
Func TrainGui()

$TrainGui = GUICreate("SET YOUR ARMY TO TRAIN", 1185, 670,@DesktopWidth/2-1185/2, @DesktopHeight/2-670/2, BitAND($WS_POPUP,$WS_EX_CONTROLPARENT))
;~ GUISetBkColor(0x008080)
$PicBackGround = GUICtrlCreatePic (@ScriptDir & "\USE\BG.bmp", -1, -1, 1043+145, 673)
GUICtrlSetState(-1,$GUI_DISABLE)
$TH6 = GUICtrlCreateLabel("TH6", 55, 14, 55, 29)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
$TH7 = GUICtrlCreateLabel("TH7", 204, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$TH8 = GUICtrlCreateLabel("TH8", 348, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$TH9 = GUICtrlCreateLabel("TH9", 482+10, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$TH10 = GUICtrlCreateLabel("TH10", 626+11, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$TH11 = GUICtrlCreateLabel("TH11", 770+12, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$TH12 = GUICtrlCreateLabel("TH12", 914+13, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$TH13 = GUICtrlCreateLabel("TH13", 1058+13, 14, 55, 29)
GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
$SaveTrain = GUICtrlCreateButton("Save and Return", 470, 580, 200, 40)
GUICtrlSetFont(-1, 16, 800, 0, "Georgia")
GUICtrlSetColor(-1, 0x000080)
GUICtrlSetBkColor(-1, 0x008080)
;~ GUISetOnEvent(-1,"SaveandExit")
GUICtrlSetCursor (-1, 0)


	$x =10
	$y =30

		$y +=25
		$TH6PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x+3, $y-2, 24, 24)
		$TH6txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip($TH6txtNumBarbarian, "Enter the No. of Barbarian to make.")
		$TH6Level13 = GUICtrlCreateUpdown($TH6txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH6PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip($TH6txtNumArcher, "Enter the No. of Archer to make.")
		$TH6Level14 = GUICtrlCreateUpdown($TH6txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH6PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip($TH6PicGiant, "Enter the No. of Giants to make.")
		$TH6Level15 = GUICtrlCreateUpdown($TH6txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH6PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH6Level16 = GUICtrlCreateUpdown($TH6txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH6PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH6Level17 = GUICtrlCreateUpdown($TH6txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH6PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH6Level18 = GUICtrlCreateUpdown($TH6txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH6PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH6Level19 = GUICtrlCreateUpdown($TH6txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH6PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH6Level20 = GUICtrlCreateUpdown($TH6txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH6PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH6Level21 = GUICtrlCreateUpdown($TH6txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		$y +=25
		$TH6PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH6Level22 = GUICtrlCreateUpdown($TH6txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH6PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH6Level23 = GUICtrlCreateUpdown($TH6txtNumBabyDragon)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH6PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH6Level24 = GUICtrlCreateUpdown($TH6txtNumMiner)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH6PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH6Level25 = GUICtrlCreateUpdown($TH6txtNumEdrag)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

		$y +=25
		$TH6PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH6Level26 = GUICtrlCreateUpdown($TH6txtNumMini)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH6PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH6Level26 = GUICtrlCreateUpdown($TH6txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

				$y +=25
		$TH6PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH6Level27 = GUICtrlCreateUpdown($TH6txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


				$y +=25
		$TH6PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH6Level28 = GUICtrlCreateUpdown($TH6txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

					$y +=25
		$TH6PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH6Level29 = GUICtrlCreateUpdown($TH6txtNumWitch)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

				$y +=25
		$TH6PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH6Level30 = GUICtrlCreateUpdown($TH6txtNumLava)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

					$y +=25
		$TH6PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH6Level31 = GUICtrlCreateUpdown($TH6txtNumBowler)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH6PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH6Level32 = GUICtrlCreateUpdown($TH6txtNumIceGolem)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)







;~ 		____________________________



	$x =80
	$y =30

		$y +=25
		$TH6PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x+3, $y-2, 24, 24)
		$TH6txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH6Level33 = GUICtrlCreateUpdown($TH6txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH6PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH6txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH6Level34 = GUICtrlCreateUpdown($TH6txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH6PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH6Leve135 = GUICtrlCreateUpdown($TH6txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

		$y +=25
		$TH6PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH6Level36 = GUICtrlCreateUpdown($TH6txtNumJSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

		$y +=25
		$TH6PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH6Level37 = GUICtrlCreateUpdown($TH6txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)



		$y +=25
		$TH6PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH6Level38 = GUICtrlCreateUpdown($TH6txtNumCSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		$y +=25
		$TH6PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH6Level39 = GUICtrlCreateUpdown($TH6txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)



		$y +=25
		$TH6PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH6Level40 = GUICtrlCreateUpdown($TH6txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		$y +=25
		$TH6PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH6Level41 = GUICtrlCreateUpdown($TH6txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		$y +=25
		$TH6PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH6Level42 = GUICtrlCreateUpdown($TH6txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH6PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH6Level43 = GUICtrlCreateUpdown($TH6txtNumBaSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH6PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH6Level44 = GUICtrlCreateUpdown($TH6txtNumBattleB)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH6PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH6Level45 = GUICtrlCreateUpdown($TH6txtNumWallw)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

		$y +=25
		$TH6PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH6Level46 = GUICtrlCreateUpdown($TH6txtNumStoneS)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


			$y +=25
		$TH6PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH6Level47 = GUICtrlCreateUpdown($TH6txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
			GUICtrlSetState(-1,$GUI_HIDE)
		 $y +=26
		 $TH6txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH6PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH6Level48 = GUICtrlCreateUpdown($TH6txtNumQueen)
		GUICtrlSetLimit(-1, 3, 0)
			GUICtrlSetState(-1,$GUI_HIDE)
		 $y +=26
		 $TH6txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
;		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH6PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH6txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH6Level49 = GUICtrlCreateUpdown($TH6txtNumWarden)
		GUICtrlSetLimit(-1, 3, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		 $y +=26
		 $TH6txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)




;~ TH7
$x =155
$y =30
		$y +=25

		$TH7PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip($TH7txtNumBarbarian, "Enter the No. of Barbarian to make.")
		$TH7Level50 = GUICtrlCreateUpdown($TH7txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH7Level51 = GUICtrlCreateUpdown($TH7txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH7Level52 = GUICtrlCreateUpdown($TH7txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH7Level53 = GUICtrlCreateUpdown($TH7txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH7Level54 = GUICtrlCreateUpdown($TH7txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH7PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH7Level55 = GUICtrlCreateUpdown($TH7txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH7PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH7Level56 = GUICtrlCreateUpdown($TH7txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH7PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH7Level57 = GUICtrlCreateUpdown($TH7txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH7PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH7Level58 = GUICtrlCreateUpdown($TH7txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH7PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH7Level59 = GUICtrlCreateUpdown($TH7txtNumPekk)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH7PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetState(-1,$GUI_HIDE)
	 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH7Level60 = GUICtrlCreateUpdown($TH7txtNumBabyDragon)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH7PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH7Level61 = GUICtrlCreateUpdown($TH7txtNumMiner)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH7PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH7Level62 = GUICtrlCreateUpdown($TH7txtNumEdrag)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

		$y -=75
		$TH7PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH7Level26 = GUICtrlCreateUpdown($TH7txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH7PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH7Level63 = GUICtrlCreateUpdown($TH7txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH7PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH7Level64 = GUICtrlCreateUpdown($TH7txtNumValkyre)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH7PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH7Level265= GUICtrlCreateUpdown($TH7txtNumGolem)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH7PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH7Level66 = GUICtrlCreateUpdown($TH7txtNumWitch)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH7PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH7Level67 = GUICtrlCreateUpdown($TH7txtNumLava)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH7PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH7Level68 = GUICtrlCreateUpdown($TH7txtNumBowler)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH7PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH7Level69 = GUICtrlCreateUpdown($TH7txtNumIceGolem)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)







;~ 		____________________________



$x =225
	$y =30

		$y +=25
		$TH7PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH7Level32 = GUICtrlCreateUpdown($TH7txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH7Level34 = GUICtrlCreateUpdown($TH7txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH7Leve135 = GUICtrlCreateUpdown($TH7txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH7Level36 = GUICtrlCreateUpdown($TH7txtNumJSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH7PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH7Level37 = GUICtrlCreateUpdown($TH7txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)



		$y +=25
		$TH7PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH7Level38 = GUICtrlCreateUpdown($TH7txtNumCSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		$y -=50
		$TH7PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))

					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH7Level39 = GUICtrlCreateUpdown($TH7txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)




		$y +=25
		$TH7PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH7Level40 = GUICtrlCreateUpdown($TH7txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH7PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH7Level41 = GUICtrlCreateUpdown($TH7txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)


		$y +=25
		$TH7PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH7Level42 = GUICtrlCreateUpdown($TH7txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH7PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH7Level43 = GUICtrlCreateUpdown($TH7txtNumBaSpell)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH7PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH7Level24 = GUICtrlCreateUpdown($TH7txtNumBattleB)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y +=25
		$TH7PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH7Level25 = GUICtrlCreateUpdown($TH7txtNumWallw)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

		$y +=25
		$TH7PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH7Level26 = GUICtrlCreateUpdown($TH7txtNumStoneS)
		GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetState(-1,$GUI_HIDE)

			$y -=125
		$TH7PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH7txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH7Level27 = GUICtrlCreateUpdown($TH7txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH7txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH7PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH7Level28 = GUICtrlCreateUpdown($TH7txtNumQueen)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH7txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH7PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH7txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH7Level27 = GUICtrlCreateUpdown($TH7txtNumWarden)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH7txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

;~ 	TH8


$x =300
	$y =30

		$y +=25
		$TH8PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
		$TH8Level13 = GUICtrlCreateUpdown($TH8txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH8Level14 = GUICtrlCreateUpdown($TH8txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH8Level15 = GUICtrlCreateUpdown($TH8txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH8Level16 = GUICtrlCreateUpdown($TH8txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH8Level17 = GUICtrlCreateUpdown($TH8txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH8PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH8Level18 = GUICtrlCreateUpdown($TH8txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH8PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH8Level19 = GUICtrlCreateUpdown($TH8txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH8PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH8Level20 = GUICtrlCreateUpdown($TH8txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH8PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH8Level21 = GUICtrlCreateUpdown($TH8txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH8PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH8Level22 = GUICtrlCreateUpdown($TH8txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH8Level23 = GUICtrlCreateUpdown($TH8txtNumBabyDragon)
				GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH8Level24 = GUICtrlCreateUpdown($TH8txtNumMiner)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH8Level25 = GUICtrlCreateUpdown($TH8txtNumEdrag)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y -=50
		$TH8PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH8Level26 = GUICtrlCreateUpdown($TH8txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH8Level26 = GUICtrlCreateUpdown($TH8txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH8PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH8Level27 = GUICtrlCreateUpdown($TH8txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH8PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH8Level28 = GUICtrlCreateUpdown($TH8txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH8PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH8Level29 = GUICtrlCreateUpdown($TH8txtNumWitch)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH8PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH8Level29 = GUICtrlCreateUpdown($TH8txtNumLava)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH8PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH8Level30 = GUICtrlCreateUpdown($TH8txtNumBowler)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH8PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH8Level31 = GUICtrlCreateUpdown($TH8txtNumIceGolem)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)







;~ 		____________________________



$x =370
	$y =30

		$y +=25
		$TH8PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH8Level32 = GUICtrlCreateUpdown($TH8txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH8Level34 = GUICtrlCreateUpdown($TH8txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH8Leve135 = GUICtrlCreateUpdown($TH8txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH8Level36 = GUICtrlCreateUpdown($TH8txtNumJSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH8Level37 = GUICtrlCreateUpdown($TH8txtNumFSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH8PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH8Level38 = GUICtrlCreateUpdown($TH8txtNumCSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


		$y -=50
		$TH8PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH8Level39 = GUICtrlCreateUpdown($TH8txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH8PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH8Level40 = GUICtrlCreateUpdown($TH8txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH8PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH8Level41 = GUICtrlCreateUpdown($TH8txtNumHaSpell)
				GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH8PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
				GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH8Level42 = GUICtrlCreateUpdown($TH8txtNumSkSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH8Level43 = GUICtrlCreateUpdown($TH8txtNumBaSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH8Level24 = GUICtrlCreateUpdown($TH8txtNumBattleB)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH8PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH8Level25 = GUICtrlCreateUpdown($TH8txtNumWallw)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH8PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH8Level26 = GUICtrlCreateUpdown($TH8txtNumStoneS)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y -=125
		$TH8PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH8txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH8Level27 = GUICtrlCreateUpdown($TH8txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH8txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH8PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH8Level28 = GUICtrlCreateUpdown($TH8txtNumQueen)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH8txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH8PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH8txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH8Level27 = GUICtrlCreateUpdown($TH8txtNumWarden)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH8txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

;~ TH9


$x =445
	$y =30

		$y +=25
		$TH9PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
		$TH9Level13 = GUICtrlCreateUpdown($TH9txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH9Level14 = GUICtrlCreateUpdown($TH9txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH9Level15 = GUICtrlCreateUpdown($TH9txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH9Level16 = GUICtrlCreateUpdown($TH9txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH9Level17 = GUICtrlCreateUpdown($TH9txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH9PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH9Level18 = GUICtrlCreateUpdown($TH9txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH9PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH9Level19 = GUICtrlCreateUpdown($TH9txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH9PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH9Level20 = GUICtrlCreateUpdown($TH9txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH9PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH9Level21 = GUICtrlCreateUpdown($TH9txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH9PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH9Level22 = GUICtrlCreateUpdown($TH9txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH9Level23 = GUICtrlCreateUpdown($TH9txtNumBabyDragon)
	GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH9Level24 = GUICtrlCreateUpdown($TH9txtNumMiner)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH9Level25 = GUICtrlCreateUpdown($TH9txtNumEdrag)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y -=25
		$TH9PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH9Level26 = GUICtrlCreateUpdown($TH9txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH9Level26 = GUICtrlCreateUpdown($TH9txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH9PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH9Level27 = GUICtrlCreateUpdown($TH9txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH9PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH9Level28 = GUICtrlCreateUpdown($TH9txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH9PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH9Level29 = GUICtrlCreateUpdown($TH9txtNumWitch)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH9PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH9Level29 = GUICtrlCreateUpdown($TH9txtNumLava)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH9PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH9Level30 = GUICtrlCreateUpdown($TH9txtNumBowler)
				GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH9PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH9Level31 = GUICtrlCreateUpdown($TH9txtNumIceGolem)
				GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetLimit(-1, 280, 0)







;~ 		____________________________



$x =515
$y =30

		$y +=25
		$TH9PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH9Level32 = GUICtrlCreateUpdown($TH9txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH9Level34 = GUICtrlCreateUpdown($TH9txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH9Leve135 = GUICtrlCreateUpdown($TH9txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH9Level36 = GUICtrlCreateUpdown($TH9txtNumJSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH9Level37 = GUICtrlCreateUpdown($TH9txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH9PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH9Level38 = GUICtrlCreateUpdown($TH9txtNumCSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=0
		$TH9PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH9Level39 = GUICtrlCreateUpdown($TH9txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH9PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH9Level40 = GUICtrlCreateUpdown($TH9txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH9PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH9Level41 = GUICtrlCreateUpdown($TH9txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH9PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH9Level42 = GUICtrlCreateUpdown($TH9txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH9Level43 = GUICtrlCreateUpdown($TH9txtNumBaSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH9Level24 = GUICtrlCreateUpdown($TH9txtNumBattleB)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH9PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH9Level25 = GUICtrlCreateUpdown($TH9txtNumWallw)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH9PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH9Level26 = GUICtrlCreateUpdown($TH9txtNumStoneS)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


			$y -=75
		$TH9PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH9Level27 = GUICtrlCreateUpdown($TH9txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH9txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH9PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
		$TH9txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH9Level28 = GUICtrlCreateUpdown($TH9txtNumQueen)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH9txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH9PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH9txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH9Level27 = GUICtrlCreateUpdown($TH9txtNumWarden)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH9txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

;~ TH10

	$x =590
	$y =30

		$y +=25
		$TH10PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
		$TH10Level13 = GUICtrlCreateUpdown($TH10txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH10Level14 = GUICtrlCreateUpdown($TH10txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH10Level15 = GUICtrlCreateUpdown($TH10txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH10Level16 = GUICtrlCreateUpdown($TH10txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH10Level17 = GUICtrlCreateUpdown($TH10txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH10PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH10Level18 = GUICtrlCreateUpdown($TH10txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH10PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH10Level19 = GUICtrlCreateUpdown($TH10txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH10PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH10Level20 = GUICtrlCreateUpdown($TH10txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH10PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH10Level21 = GUICtrlCreateUpdown($TH10txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH10PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH10Level22 = GUICtrlCreateUpdown($TH10txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH10Level23 = GUICtrlCreateUpdown($TH10txtNumBabyDragon)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH10Level24 = GUICtrlCreateUpdown($TH10txtNumMiner)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH10Level25 = GUICtrlCreateUpdown($TH10txtNumEdrag)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=0
		$TH10PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH10Level26 = GUICtrlCreateUpdown($TH10txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH10Level26 = GUICtrlCreateUpdown($TH10txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH10PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH10Level27 = GUICtrlCreateUpdown($TH10txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH10PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH10Level28 = GUICtrlCreateUpdown($TH10txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH10PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH10Level29 = GUICtrlCreateUpdown($TH10txtNumWitch)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH10PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH10Level29 = GUICtrlCreateUpdown($TH10txtNumLava)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH10PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH10Level30 = GUICtrlCreateUpdown($TH10txtNumBowler)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH10PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH10Level31 = GUICtrlCreateUpdown($TH10txtNumIceGolem)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)







;~ 		____________________________



	$x =660
	$y =30

		$y +=25
		$TH10PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH10Level32 = GUICtrlCreateUpdown($TH10txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH10Level34 = GUICtrlCreateUpdown($TH10txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH10Leve135 = GUICtrlCreateUpdown($TH10txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH10Level36 = GUICtrlCreateUpdown($TH10txtNumJSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH10Level37 = GUICtrlCreateUpdown($TH10txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH10PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH10Level38 = GUICtrlCreateUpdown($TH10txtNumCSpell)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=0
		$TH10PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH10Level39 = GUICtrlCreateUpdown($TH10txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH10PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH10Level40 = GUICtrlCreateUpdown($TH10txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH10PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH10Level41 = GUICtrlCreateUpdown($TH10txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH10PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH10Level42 = GUICtrlCreateUpdown($TH10txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
	 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH10Level43 = GUICtrlCreateUpdown($TH10txtNumBaSpell)
	GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetState(-1,$GUI_HIDE)
	 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH10Level24 = GUICtrlCreateUpdown($TH10txtNumBattleB)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH10PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH10Level25 = GUICtrlCreateUpdown($TH10txtNumWallw)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH10PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH10Level26 = GUICtrlCreateUpdown($TH10txtNumStoneS)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)



			$y -=50
		$TH10PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH10Level27 = GUICtrlCreateUpdown($TH10txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH10txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH10PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
		$TH10txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH10Level28 = GUICtrlCreateUpdown($TH10txtNumQueen)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH10txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH10PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH10txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH10Level27 = GUICtrlCreateUpdown($TH10txtNumWarden)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH10txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 180, 1)
			GUICtrlSetState(-1,$GUI_HIDE)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

;~ th11

	$x =735
	$y =30

		$y +=25
		$TH11PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
		$TH11Level13 = GUICtrlCreateUpdown($TH11txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH11Level14 = GUICtrlCreateUpdown($TH11txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH11Level15 = GUICtrlCreateUpdown($TH11txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH11Level16 = GUICtrlCreateUpdown($TH11txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH11Level17 = GUICtrlCreateUpdown($TH11txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH11PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH11Level18 = GUICtrlCreateUpdown($TH11txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH11PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH11Level19 = GUICtrlCreateUpdown($TH11txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH11PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH11Level20 = GUICtrlCreateUpdown($TH11txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH11PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH11Level21 = GUICtrlCreateUpdown($TH11txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH11PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH11Level22 = GUICtrlCreateUpdown($TH11txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH11Level23 = GUICtrlCreateUpdown($TH11txtNumBabyDragon)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH11Level24 = GUICtrlCreateUpdown($TH11txtNumMiner)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH11Level25 = GUICtrlCreateUpdown($TH11txtNumEdrag)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH11Level26 = GUICtrlCreateUpdown($TH11txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH11Level26 = GUICtrlCreateUpdown($TH11txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH11PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH11Level27 = GUICtrlCreateUpdown($TH11txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH11PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH11Level28 = GUICtrlCreateUpdown($TH11txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH11PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH11Level29 = GUICtrlCreateUpdown($TH11txtNumWitch)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH11PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH11Level29 = GUICtrlCreateUpdown($TH11txtNumLava)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH11PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH11Level30 = GUICtrlCreateUpdown($TH11txtNumBowler)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH11PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH11Level31 = GUICtrlCreateUpdown($TH11txtNumIceGolem)
		GUICtrlSetLimit(-1, 280, 0)





;~ 		____________________________



	$x =805
	$y =30

		$y +=25
		$TH11PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH11Level32 = GUICtrlCreateUpdown($TH11txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH11Level34 = GUICtrlCreateUpdown($TH11txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH11Leve135 = GUICtrlCreateUpdown($TH11txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH11Level36 = GUICtrlCreateUpdown($TH11txtNumJSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH11Level37 = GUICtrlCreateUpdown($TH11txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH11PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH11Level38 = GUICtrlCreateUpdown($TH11txtNumCSpell)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH11PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH11Level39 = GUICtrlCreateUpdown($TH11txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH11PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH11Level40 = GUICtrlCreateUpdown($TH11txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH11PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH11Level41 = GUICtrlCreateUpdown($TH11txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH11PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH11Level42 = GUICtrlCreateUpdown($TH11txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH11Level43 = GUICtrlCreateUpdown($TH11txtNumBaSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH11txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH11Level24 = GUICtrlCreateUpdown($TH11txtNumBattleB)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH11PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH11txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH11Level25 = GUICtrlCreateUpdown($TH11txtNumWallw)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH11PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH11txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetState(-1,$GUI_HIDE)
	 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH11Level26 = GUICtrlCreateUpdown($TH11txtNumStoneS)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)


			$y -=50
		$TH11PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH11Level27 = GUICtrlCreateUpdown($TH11txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH11txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH11PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH11Leve528 = GUICtrlCreateUpdown($TH11txtNumQueen)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH11txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH11PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
		$TH11txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH11Level27 = GUICtrlCreateUpdown($TH11txtNumWarden)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH11txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)



;~ th12


	$x =880
	$y =30

		$y +=25
		$TH12PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
		$TH12Level13 = GUICtrlCreateUpdown($TH12txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH12Level14 = GUICtrlCreateUpdown($TH12txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH12Level15 = GUICtrlCreateUpdown($TH12txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH12Level16 = GUICtrlCreateUpdown($TH12txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH12Level17 = GUICtrlCreateUpdown($TH12txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH12PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH12Level18 = GUICtrlCreateUpdown($TH12txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH12PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH12Level19 = GUICtrlCreateUpdown($TH12txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH12PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH12Level20 = GUICtrlCreateUpdown($TH12txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH12PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH12Level21 = GUICtrlCreateUpdown($TH12txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH12PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH12Level22 = GUICtrlCreateUpdown($TH12txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH12PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH12Level23 = GUICtrlCreateUpdown($TH12txtNumBabyDragon)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH12PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH12Level24 = GUICtrlCreateUpdown($TH12txtNumMiner)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH12PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH12Level25 = GUICtrlCreateUpdown($TH12txtNumEdrag)
		GUICtrlSetLimit(-1, 280, 0)

;			$y +=25
		$TH12PicYeti = GUICtrlCreatePic (@ScriptDir & "\Icon\yeti.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH12txtNumYeti = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Yeti to make.")
		 $TH12Level55 = GUICtrlCreateUpdown($TH12txtNumYeti)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH12Level26 = GUICtrlCreateUpdown($TH12txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH12PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH12Level26 = GUICtrlCreateUpdown($TH12txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH12PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH12Level27 = GUICtrlCreateUpdown($TH12txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH12PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH12Level28 = GUICtrlCreateUpdown($TH12txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH12PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH12Level29 = GUICtrlCreateUpdown($TH12txtNumWitch)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH12PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH12Level29 = GUICtrlCreateUpdown($TH12txtNumLava)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH12PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH12Level30 = GUICtrlCreateUpdown($TH12txtNumBowler)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH12PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH12Level31 = GUICtrlCreateUpdown($TH12txtNumIceGolem)
		GUICtrlSetLimit(-1, 280, 0)







;~ 		____________________________



	$x =950
	$y =30

		$y +=25
		$TH12PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH12Level32 = GUICtrlCreateUpdown($TH12txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH12Level34 = GUICtrlCreateUpdown($TH12txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH12Leve135 = GUICtrlCreateUpdown($TH12txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH12Level36 = GUICtrlCreateUpdown($TH12txtNumJSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH12PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH12Level37 = GUICtrlCreateUpdown($TH12txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH12PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH12Level38 = GUICtrlCreateUpdown($TH12txtNumCSpell)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH12PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH12Level39 = GUICtrlCreateUpdown($TH12txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH12PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH12Level40 = GUICtrlCreateUpdown($TH12txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH12PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH12Level41 = GUICtrlCreateUpdown($TH12txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH12PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH12Level42 = GUICtrlCreateUpdown($TH12txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH12PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH12Level43 = GUICtrlCreateUpdown($TH12txtNumBaSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH12PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH12Level24 = GUICtrlCreateUpdown($TH12txtNumBattleB)
		GUICtrlSetLimit(-1, 3, 0)

			$y +=25
		$TH12PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH12Level25 = GUICtrlCreateUpdown($TH12txtNumWallw)
		GUICtrlSetLimit(-1, 3, 0)

		$y +=25
		$TH12PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH12Level26 = GUICtrlCreateUpdown($TH12txtNumStoneS)
		GUICtrlSetLimit(-1, 3, 0)

;		$y +=25
		$TH12PicSiegeB = GUICtrlCreatePic (@ScriptDir & "\Icon\SiegeB.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH12txtNumSiegeB  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, "Enter the No. of Siege Barrack to make.")
		 $TH12Level26 = GUICtrlCreateUpdown($TH12txtNumSiegeB)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)


			$y +=25
		$TH12PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH12Level27 = GUICtrlCreateUpdown($TH12txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH12txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH12PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH12Level28 = GUICtrlCreateUpdown($TH12txtNumQueen)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH12txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH12PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
		$TH12txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH12Level27 = GUICtrlCreateUpdown($TH12txtNumWarden)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH12txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtWarden = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


;			$y +=25
		$TH12PicRoyaleC = GUICtrlCreatePic (@ScriptDir & "\Icon\RoyaleC.bmp", $x + 3, $y - 4, 24, 24)
			GUICtrlSetState(-1,$GUI_HIDE)
		$TH12txtNumRoyaleC  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)
			$txtRoyaleC = "1 = Activate Royale Champion if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, $txtRoyaleC)
		 $TH12Level37 = GUICtrlCreateUpdown($TH12txtNumRoyaleC)
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 3, 0)


;		 $y +=26
		 $TH12txtNumRoyaleCSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
			GUICtrlSetState(-1,$GUI_HIDE)
		GUICtrlSetLimit(-1, 180, 1)
			$txtRoyaleC = "1 = Activate Royale Champion if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetTip(-1, $txtRoyaleC)
		 $lblRoyaleC = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
			GUICtrlSetState(-1,$GUI_HIDE)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)




;~ th13


	$x =880+145
	$y =30

		$y +=25
		$TH13PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
		$TH13Level13 = GUICtrlCreateUpdown($TH13txtNumBarbarian)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicArcher = GUICtrlCreatePic (@ScriptDir & "\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH13Level14 = GUICtrlCreateUpdown($TH13txtNumArcher)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicGiant = GUICtrlCreatePic (@ScriptDir & "\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
		$TH13Level15 = GUICtrlCreateUpdown($TH13txtNumGiant)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicGoblin = GUICtrlCreatePic (@ScriptDir & "\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
		$TH13Level16 = GUICtrlCreateUpdown($TH13txtNumGoblin)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicWallB = GUICtrlCreatePic (@ScriptDir & "\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
		$TH13Level17 = GUICtrlCreateUpdown($TH13txtNumWall)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH13PicBall = GUICtrlCreatePic (@ScriptDir & "\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
		$TH13Level18 = GUICtrlCreateUpdown($TH13txtNumBall)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH13PicWizzard = GUICtrlCreatePic (@ScriptDir & "\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
			$TH13Level19 = GUICtrlCreateUpdown($TH13txtNumWiza)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH13PicHealer = GUICtrlCreatePic (@ScriptDir & "\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
			$TH13Level20 = GUICtrlCreateUpdown($TH13txtNumHeal)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH13PicDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
			$TH13Level21 = GUICtrlCreateUpdown($TH13txtNumDrag)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH13PicPekka = GUICtrlCreatePic (@ScriptDir & "\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
		 $TH13Level22 = GUICtrlCreateUpdown($TH13txtNumPekk)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
		 $TH13Level23 = GUICtrlCreateUpdown($TH13txtNumBabyDragon)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicMiner = GUICtrlCreatePic (@ScriptDir & "\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
		 $TH13Level24 = GUICtrlCreateUpdown($TH13txtNumMiner)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicElectro = GUICtrlCreatePic (@ScriptDir & "\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
		 $TH13Level25 = GUICtrlCreateUpdown($TH13txtNumEdrag)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicYeti = GUICtrlCreatePic (@ScriptDir & "\Icon\yeti.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumYeti = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Yeti to make.")
		 $TH13Level55 = GUICtrlCreateUpdown($TH13txtNumYeti)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicMini = GUICtrlCreatePic (@ScriptDir & "\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
		 $TH13Level26 = GUICtrlCreateUpdown($TH13txtNumMini)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicHogs = GUICtrlCreatePic (@ScriptDir & "\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
		 $TH13Level26 = GUICtrlCreateUpdown($TH13txtNumHogs)
		GUICtrlSetLimit(-1, 280, 0)

				$y +=25
		$TH13PicValkyre = GUICtrlCreatePic (@ScriptDir & "\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
		 $TH13Level27 = GUICtrlCreateUpdown($TH13txtNumValkyre)
		GUICtrlSetLimit(-1, 280, 0)


				$y +=25
		$TH13PicGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
		 $TH13Level28 = GUICtrlCreateUpdown($TH13txtNumGolem)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH13PicWitch = GUICtrlCreatePic (@ScriptDir & "\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
		 $TH13Level29 = GUICtrlCreateUpdown($TH13txtNumWitch)
		GUICtrlSetLimit(-1, 280, 0)
			$y +=25
		$TH13PicLava = GUICtrlCreatePic (@ScriptDir & "\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
		 $TH13Level29 = GUICtrlCreateUpdown($TH13txtNumLava)
		GUICtrlSetLimit(-1, 280, 0)
					$y +=25
		$TH13PicBowler = GUICtrlCreatePic (@ScriptDir & "\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
		 $TH13Level30 = GUICtrlCreateUpdown($TH13txtNumBowler)
		GUICtrlSetLimit(-1, 280, 0)

					$y +=25
		$TH13PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
		 $TH13Level31 = GUICtrlCreateUpdown($TH13txtNumIceGolem)
		GUICtrlSetLimit(-1, 280, 0)







;~ 		____________________________



	$x =950+145
	$y =30

		$y +=25
		$TH13PicLSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
		$TH13Level32 = GUICtrlCreateUpdown($TH13txtNumLSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicHSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
		$TH13Level34 = GUICtrlCreateUpdown($TH13txtNumHSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicRSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
		$TH13Leve135 = GUICtrlCreateUpdown($TH13txtNumRSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicJSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
		$TH13Level36 = GUICtrlCreateUpdown($TH13txtNumJSpell)
		GUICtrlSetLimit(-1, 280, 0)

		$y +=25
		$TH13PicFSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
		$TH13Level37 = GUICtrlCreateUpdown($TH13txtNumFSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH13PicCSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
				GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
		$TH13Level38 = GUICtrlCreateUpdown($TH13txtNumCSpell)
		GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH13PicPSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
					GUICtrlSetLimit(-1, 280, 0)
			GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
			$TH13Level39 = GUICtrlCreateUpdown($TH13txtNumPSpell)
		GUICtrlSetLimit(-1, 280, 0)



		$y +=25
		$TH13PicESpell = GUICtrlCreatePic (@ScriptDir & "\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
			$TH13Level40 = GUICtrlCreateUpdown($TH13txtNumESpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH13PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
			$TH13Level41 = GUICtrlCreateUpdown($TH13txtNumHaSpell)
			GUICtrlSetLimit(-1, 280, 0)


		$y +=25
		$TH13PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
		 $TH13Level42 = GUICtrlCreateUpdown($TH13txtNumSkSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
		 $TH13Level43 = GUICtrlCreateUpdown($TH13txtNumBaSpell)
		GUICtrlSetLimit(-1, 280, 0)

			$y +=25
		$TH13PicBattleB = GUICtrlCreatePic (@ScriptDir & "\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
		 $TH13Level24 = GUICtrlCreateUpdown($TH13txtNumBattleB)
		GUICtrlSetLimit(-1, 3, 0)

			$y +=25
		$TH13PicWallw = GUICtrlCreatePic (@ScriptDir & "\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
		 $TH13Level25 = GUICtrlCreateUpdown($TH13txtNumWallw)
		GUICtrlSetLimit(-1, 3, 0)

		$y +=25
		$TH13PicStoneS = GUICtrlCreatePic (@ScriptDir & "\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
		 $TH13Level26 = GUICtrlCreateUpdown($TH13txtNumStoneS)
		GUICtrlSetLimit(-1, 3, 0)

		$y +=25
		$TH13PicSiegeB = GUICtrlCreatePic (@ScriptDir & "\Icon\SiegeB.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumSiegeB  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		 GUICtrlSetTip(-1, "Enter the No. of Siege Barrack to make.")
		 $TH13Level26 = GUICtrlCreateUpdown($TH13txtNumSiegeB)
		GUICtrlSetLimit(-1, 3, 0)


			$y +=25
		$TH13PicKing = GUICtrlCreatePic (@ScriptDir & "\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $TH13Level27 = GUICtrlCreateUpdown($TH13txtNumKing)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH13txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtKing = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtKing)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH13PicQueen = GUICtrlCreatePic (@ScriptDir & "\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 $TH13Level28 = GUICtrlCreateUpdown($TH13txtNumQueen)
		GUICtrlSetLimit(-1, 3, 0)
		 $y +=26
		 $TH13txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtQueen = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtQueen)
		 GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH13PicWarden = GUICtrlCreatePic (@ScriptDir & "\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $TH13Level27 = GUICtrlCreateUpdown($TH13txtNumWarden)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH13txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtWarden = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtWarden)
		 $lblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


			$y +=25
		$TH13PicRoyaleC = GUICtrlCreatePic (@ScriptDir & "\Icon\RoyaleC.bmp", $x + 3, $y - 4, 24, 24)
		$TH13txtNumRoyaleC  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_READONLY,  $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 3, 0)
			$txtRoyaleC = "1 = Activate Royale Champion if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtRoyaleC)
		 $TH13Level37 = GUICtrlCreateUpdown($TH13txtNumRoyaleC)
		GUICtrlSetLimit(-1, 3, 0)


		 $y +=26
		 $TH13txtNumRoyaleCSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
		GUICtrlSetLimit(-1, 180, 1)
			$txtRoyaleC = "1 = Activate Royale Champion if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
		 GUICtrlSetTip(-1, $txtRoyaleC)
		 $lblRoyaleC = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
		 GUICtrlSetFont($lblRoyaleC, 9, 800, 0, "Georgia")
		 GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)







EndFunc


Func SetTrain()
	;Barbarian
	If GUICtrlRead($TH6txtNumBarbarian) > 0 Or GUICtrlRead($TH7txtNumBarbarian) > 0 Or GUICtrlRead($TH8txtNumBarbarian) > 0 Or GUICtrlRead($TH9txtNumBarbarian) > 0 Or GUICtrlRead($TH10txtNumBarbarian) > 0 Or GUICtrlRead($TH11txtNumBarbarian) > 0 Or GUICtrlRead($TH12txtNumBarbarian) > 0 Or GUICtrlRead($TH13txtNumBarbarian) > 0 Then
		If GUICtrlRead($TH6txtNumBarbarian) >= 0 Then
			$6Barbarian = "|" & GUICtrlRead($TH6txtNumBarbarian) & "          "
			If GUICtrlRead($TH6txtNumBarbarian) >= 10 Then
				$6Barbarian = "|" & GUICtrlRead($TH6txtNumBarbarian) & "         "
					If GUICtrlRead($TH6txtNumBarbarian) >= 100 Then
						$6Barbarian = "|" & GUICtrlRead($TH6txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBarbarian) >= 0 Then
			$7Barbarian = "|" & GUICtrlRead($TH7txtNumBarbarian) & "          "
			If GUICtrlRead($TH7txtNumBarbarian) >= 10 Then
				$7Barbarian = "|" & GUICtrlRead($TH7txtNumBarbarian) & "         "
					If GUICtrlRead($TH7txtNumBarbarian) >= 100 Then
						$7Barbarian = "|" & GUICtrlRead($TH7txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBarbarian) >= 0 Then
			$8Barbarian = "|" & GUICtrlRead($TH8txtNumBarbarian) & "          "
			If GUICtrlRead($TH8txtNumBarbarian) >= 10 Then
				$8Barbarian = "|" & GUICtrlRead($TH8txtNumBarbarian) & "         "
					If GUICtrlRead($TH8txtNumBarbarian) >= 100 Then
						$8Barbarian = "|" & GUICtrlRead($TH8txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBarbarian) >= 0 Then
			$9Barbarian = "|" & GUICtrlRead($TH9txtNumBarbarian) & "          "
			If GUICtrlRead($TH9txtNumBarbarian) >= 10 Then
				$9Barbarian = "|" & GUICtrlRead($TH9txtNumBarbarian) & "         "
					If GUICtrlRead($TH9txtNumBarbarian) >= 100 Then
						$9Barbarian = "|" & GUICtrlRead($TH9txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBarbarian) >= 0 Then
			$10Barbarian = "|" & GUICtrlRead($TH10txtNumBarbarian) & "          "
			If GUICtrlRead($TH10txtNumBarbarian) >= 10 Then
				$10Barbarian = "|" & GUICtrlRead($TH10txtNumBarbarian) & "         "
					If GUICtrlRead($TH10txtNumBarbarian) >= 100 Then
						$10Barbarian = "|" & GUICtrlRead($TH10txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBarbarian) >= 0 Then
			$11Barbarian = "|" & GUICtrlRead($TH11txtNumBarbarian) & "          "
			If GUICtrlRead($TH11txtNumBarbarian) >= 10 Then
				$11Barbarian = "|" & GUICtrlRead($TH11txtNumBarbarian) & "         "
					If GUICtrlRead($TH11txtNumBarbarian) >= 100 Then
						$11Barbarian = "|" & GUICtrlRead($TH11txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBarbarian) >= 0 Then
			$12Barbarian = "|" & GUICtrlRead($TH12txtNumBarbarian) & "          "
			If GUICtrlRead($TH12txtNumBarbarian) >= 10 Then
				$12Barbarian = "|" & GUICtrlRead($TH12txtNumBarbarian) & "         "
					If GUICtrlRead($TH12txtNumBarbarian) >= 100 Then
						$12Barbarian = "|" & GUICtrlRead($TH12txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBarbarian) >= 0 Then
			$13Barbarian = "|" & GUICtrlRead($TH13txtNumBarbarian) & "          "
			If GUICtrlRead($TH13txtNumBarbarian) >= 10 Then
				$13Barbarian = "|" & GUICtrlRead($TH13txtNumBarbarian) & "         "
					If GUICtrlRead($TH13txtNumBarbarian) >= 100 Then
						$13Barbarian = "|" & GUICtrlRead($TH13txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf
		$TrainBarb = "TRAIN |Barb       " & $6Barbarian & $7Barbarian & $8Barbarian & $9Barbarian & $10Barbarian & $11Barbarian & $12Barbarian & $13Barbarian &"|" & @CRLF
	EndIf

;archer

	If GUICtrlRead($TH6txtNumArcher) > 0 Or GUICtrlRead($TH7txtNumArcher) > 0 Or GUICtrlRead($TH8txtNumArcher) > 0 Or GUICtrlRead($TH9txtNumArcher) > 0 Or GUICtrlRead($TH10txtNumArcher) > 0 Or GUICtrlRead($TH11txtNumArcher) > 0 Or GUICtrlRead($TH12txtNumArcher) > 0 Or GUICtrlRead($TH13txtNumArcher) > 0 Then
		If GUICtrlRead($TH6txtNumArcher) >= 0 Then
			$6Archer = "|" & GUICtrlRead($TH6txtNumArcher) & "          "
			If GUICtrlRead($TH6txtNumArcher) >= 10 Then
				$6Archer = "|" & GUICtrlRead($TH6txtNumArcher) & "         "
					If GUICtrlRead($TH6txtNumArcher) >= 100 Then
						$6Archer = "|" & GUICtrlRead($TH6txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumArcher) >= 0 Then
			$7Archer = "|" & GUICtrlRead($TH7txtNumArcher) & "          "
			If GUICtrlRead($TH7txtNumArcher) >= 10 Then
				$7Archer = "|" & GUICtrlRead($TH7txtNumArcher) & "         "
					If GUICtrlRead($TH7txtNumArcher) >= 100 Then
						$7Archer = "|" & GUICtrlRead($TH7txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumArcher) >= 0 Then
			$8Archer = "|" & GUICtrlRead($TH8txtNumArcher) & "          "
			If GUICtrlRead($TH8txtNumArcher) >= 10 Then
				$8Archer = "|" & GUICtrlRead($TH8txtNumArcher) & "         "
					If GUICtrlRead($TH8txtNumArcher) >= 100 Then
						$8Archer = "|" & GUICtrlRead($TH8txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumArcher) >= 0 Then
			$9Archer = "|" & GUICtrlRead($TH9txtNumArcher) & "          "
			If GUICtrlRead($TH9txtNumArcher) >= 10 Then
				$9Archer = "|" & GUICtrlRead($TH9txtNumArcher) & "         "
					If GUICtrlRead($TH9txtNumArcher) >= 100 Then
						$9Archer = "|" & GUICtrlRead($TH9txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumArcher) >= 0 Then
			$10Archer = "|" & GUICtrlRead($TH10txtNumArcher) & "          "
			If GUICtrlRead($TH10txtNumArcher) >= 10 Then
				$10Archer = "|" & GUICtrlRead($TH10txtNumArcher) & "         "
					If GUICtrlRead($TH10txtNumArcher) >= 100 Then
						$10Archer = "|" & GUICtrlRead($TH10txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumArcher) >= 0 Then
			$11Archer = "|" & GUICtrlRead($TH11txtNumArcher) & "          "
			If GUICtrlRead($TH11txtNumArcher) >= 10 Then
				$11Archer = "|" & GUICtrlRead($TH11txtNumArcher) & "         "
					If GUICtrlRead($TH11txtNumArcher) >= 100 Then
						$11Archer = "|" & GUICtrlRead($TH11txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumArcher) >= 0 Then
			$12Archer = "|" & GUICtrlRead($TH12txtNumArcher) & "          "
			If GUICtrlRead($TH12txtNumArcher) >= 10 Then
				$12Archer = "|" & GUICtrlRead($TH12txtNumArcher) & "         "
					If GUICtrlRead($TH12txtNumArcher) >= 100 Then
						$12Archer = "|" & GUICtrlRead($TH12txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumArcher) >= 0 Then
			$13Archer = "|" & GUICtrlRead($TH13txtNumArcher) & "          "
			If GUICtrlRead($TH13txtNumArcher) >= 10 Then
				$13Archer = "|" & GUICtrlRead($TH13txtNumArcher) & "         "
					If GUICtrlRead($TH13txtNumArcher) >= 100 Then
						$13Archer = "|" & GUICtrlRead($TH13txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainArcher = "TRAIN |Arch       " & $6Archer & $7Archer & $8Archer & $9Archer & $10Archer & $11Archer & $12Archer & $13Archer &"|" & @CRLF
	EndIf


;Giant

	If GUICtrlRead($TH6txtNumGiant) > 0 Or GUICtrlRead($TH7txtNumGiant) > 0 Or GUICtrlRead($TH8txtNumGiant) > 0 Or GUICtrlRead($TH9txtNumGiant) > 0 Or GUICtrlRead($TH10txtNumGiant) > 0 Or GUICtrlRead($TH11txtNumGiant) > 0 Or GUICtrlRead($TH12txtNumGiant) > 0 Or GUICtrlRead($TH13txtNumGiant) > 0 Then
		If GUICtrlRead($TH6txtNumGiant) >= 0 Then
			$6Giant = "|" & GUICtrlRead($TH6txtNumGiant) & "          "
			If GUICtrlRead($TH6txtNumGiant) >= 10 Then
				$6Giant = "|" & GUICtrlRead($TH6txtNumGiant) & "         "
					If GUICtrlRead($TH6txtNumGiant) >= 100 Then
						$6Giant = "|" & GUICtrlRead($TH6txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumGiant) >= 0 Then
			$7Giant = "|" & GUICtrlRead($TH7txtNumGiant) & "          "
			If GUICtrlRead($TH7txtNumGiant) >= 10 Then
				$7Giant = "|" & GUICtrlRead($TH7txtNumGiant) & "         "
					If GUICtrlRead($TH7txtNumGiant) >= 100 Then
						$7Giant = "|" & GUICtrlRead($TH7txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumGiant) >= 0 Then
			$8Giant = "|" & GUICtrlRead($TH8txtNumGiant) & "          "
			If GUICtrlRead($TH8txtNumGiant) >= 10 Then
				$8Giant = "|" & GUICtrlRead($TH8txtNumGiant) & "         "
					If GUICtrlRead($TH8txtNumGiant) >= 100 Then
						$8Giant = "|" & GUICtrlRead($TH8txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumGiant) >= 0 Then
			$9Giant = "|" & GUICtrlRead($TH9txtNumGiant) & "          "
			If GUICtrlRead($TH9txtNumGiant) >= 10 Then
				$9Giant = "|" & GUICtrlRead($TH9txtNumGiant) & "         "
					If GUICtrlRead($TH9txtNumGiant) >= 100 Then
						$9Giant = "|" & GUICtrlRead($TH9txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumGiant) >= 0 Then
			$10Giant = "|" & GUICtrlRead($TH10txtNumGiant) & "          "
			If GUICtrlRead($TH10txtNumGiant) >= 10 Then
				$10Giant = "|" & GUICtrlRead($TH10txtNumGiant) & "         "
					If GUICtrlRead($TH10txtNumGiant) >= 100 Then
						$10Giant = "|" & GUICtrlRead($TH10txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumGiant) >= 0 Then
			$11Giant = "|" & GUICtrlRead($TH11txtNumGiant) & "          "
			If GUICtrlRead($TH11txtNumGiant) >= 10 Then
				$11Giant = "|" & GUICtrlRead($TH11txtNumGiant) & "         "
					If GUICtrlRead($TH11txtNumGiant) >= 100 Then
						$11Giant = "|" & GUICtrlRead($TH11txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumGiant) >= 0 Then
			$12Giant = "|" & GUICtrlRead($TH12txtNumGiant) & "          "
			If GUICtrlRead($TH12txtNumGiant) >= 10 Then
				$12Giant = "|" & GUICtrlRead($TH12txtNumGiant) & "         "
					If GUICtrlRead($TH12txtNumGiant) >= 100 Then
						$12Giant = "|" & GUICtrlRead($TH12txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumGiant) >= 0 Then
			$13Giant = "|" & GUICtrlRead($TH13txtNumGiant) & "          "
			If GUICtrlRead($TH13txtNumGiant) >= 10 Then
				$13Giant = "|" & GUICtrlRead($TH13txtNumGiant) & "         "
					If GUICtrlRead($TH13txtNumGiant) >= 100 Then
						$13Giant = "|" & GUICtrlRead($TH13txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf
		$TrainGaint = "TRAIN |Gaint      " & $6Giant & $7Giant & $8Giant & $9Giant & $10Giant & $11Giant & $12Giant & $13Giant &"|" & @CRLF
	EndIf


;Goblin


	If GUICtrlRead($TH6txtNumGoblin) > 0 Or GUICtrlRead($TH7txtNumGoblin) > 0 Or GUICtrlRead($TH8txtNumGoblin) > 0 Or GUICtrlRead($TH9txtNumGoblin) > 0 Or GUICtrlRead($TH10txtNumGoblin) > 0 Or GUICtrlRead($TH11txtNumGoblin) > 0 Or GUICtrlRead($TH12txtNumGoblin) > 0 Or GUICtrlRead($TH13txtNumGoblin) > 0 Then
		If GUICtrlRead($TH6txtNumGoblin) >= 0 Then
			$6Goblin = "|" & GUICtrlRead($TH6txtNumGoblin) & "          "
			If GUICtrlRead($TH6txtNumGoblin) >= 10 Then
				$6Goblin = "|" & GUICtrlRead($TH6txtNumGoblin) & "         "
					If GUICtrlRead($TH6txtNumGoblin) >= 100 Then
						$6Goblin = "|" & GUICtrlRead($TH6txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumGoblin) >= 0 Then
			$7Goblin = "|" & GUICtrlRead($TH7txtNumGoblin) & "          "
			If GUICtrlRead($TH7txtNumGoblin) >= 10 Then
				$7Goblin = "|" & GUICtrlRead($TH7txtNumGoblin) & "         "
					If GUICtrlRead($TH7txtNumGoblin) >= 100 Then
						$7Goblin = "|" & GUICtrlRead($TH7txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumGoblin) >= 0 Then
			$8Goblin = "|" & GUICtrlRead($TH8txtNumGoblin) & "          "
			If GUICtrlRead($TH8txtNumGoblin) >= 10 Then
				$8Goblin = "|" & GUICtrlRead($TH8txtNumGoblin) & "         "
					If GUICtrlRead($TH8txtNumGoblin) >= 100 Then
						$8Goblin = "|" & GUICtrlRead($TH8txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumGoblin) >= 0 Then
			$9Goblin = "|" & GUICtrlRead($TH9txtNumGoblin) & "          "
			If GUICtrlRead($TH9txtNumGoblin) >= 10 Then
				$9Goblin = "|" & GUICtrlRead($TH9txtNumGoblin) & "         "
					If GUICtrlRead($TH9txtNumGoblin) >= 100 Then
						$9Goblin = "|" & GUICtrlRead($TH9txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumGoblin) >= 0 Then
			$10Goblin = "|" & GUICtrlRead($TH10txtNumGoblin) & "          "
			If GUICtrlRead($TH10txtNumGoblin) >= 10 Then
				$10Goblin = "|" & GUICtrlRead($TH10txtNumGoblin) & "         "
					If GUICtrlRead($TH10txtNumGoblin) >= 100 Then
						$10Goblin = "|" & GUICtrlRead($TH10txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumGoblin) >= 0 Then
			$11Goblin = "|" & GUICtrlRead($TH11txtNumGoblin) & "          "
			If GUICtrlRead($TH11txtNumGoblin) >= 10 Then
				$11Goblin = "|" & GUICtrlRead($TH11txtNumGoblin) & "         "
					If GUICtrlRead($TH11txtNumGoblin) >= 100 Then
						$11Goblin = "|" & GUICtrlRead($TH11txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumGoblin) >= 0 Then
			$12Goblin = "|" & GUICtrlRead($TH12txtNumGoblin) & "          "
			If GUICtrlRead($TH12txtNumGoblin) >= 10 Then
				$12Goblin = "|" & GUICtrlRead($TH12txtNumGoblin) & "         "
					If GUICtrlRead($TH12txtNumGoblin) >= 100 Then
						$12Goblin = "|" & GUICtrlRead($TH12txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumGoblin) >= 0 Then
			$13Goblin = "|" & GUICtrlRead($TH13txtNumGoblin) & "          "
			If GUICtrlRead($TH13txtNumGoblin) >= 10 Then
				$13Goblin = "|" & GUICtrlRead($TH13txtNumGoblin) & "         "
					If GUICtrlRead($TH13txtNumGoblin) >= 100 Then
						$13Goblin = "|" & GUICtrlRead($TH13txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf
		$TrainGoblin = "TRAIN |Gobl       " & $6Goblin & $7Goblin & $8Goblin & $9Goblin & $10Goblin & $11Goblin & $12Goblin & $12Goblin &"|" & @CRLF
	EndIf



;WallBreaker

	If GUICtrlRead($TH6txtNumWall) > 0 Or GUICtrlRead($TH7txtNumWall) > 0 Or GUICtrlRead($TH8txtNumWall) > 0 Or GUICtrlRead($TH9txtNumWall) > 0 Or GUICtrlRead($TH10txtNumWall) > 0 Or GUICtrlRead($TH11txtNumWall) > 0 Or GUICtrlRead($TH12txtNumWall) > 0  Or GUICtrlRead($TH13txtNumWall) > 0 Then
		If GUICtrlRead($TH6txtNumWall) >= 0 Then
			$6Wall = "|" & GUICtrlRead($TH6txtNumWall) & "          "
			If GUICtrlRead($TH6txtNumWall) >= 10 Then
				$6Wall = "|" & GUICtrlRead($TH6txtNumWall) & "         "
					If GUICtrlRead($TH6txtNumWall) >= 100 Then
						$6Wall = "|" & GUICtrlRead($TH6txtNumWall) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWall) >= 0 Then
			$7Wall = "|" & GUICtrlRead($TH7txtNumWall) & "          "
			If GUICtrlRead($TH7txtNumWall) >= 10 Then
				$7Wall = "|" & GUICtrlRead($TH7txtNumWall) & "         "
					If GUICtrlRead($TH7txtNumWall) >= 100 Then
						$7Wall = "|" & GUICtrlRead($TH7txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWall) >= 0 Then
			$8Wall = "|" & GUICtrlRead($TH8txtNumWall) & "          "
			If GUICtrlRead($TH8txtNumWall) >= 10 Then
				$8Wall = "|" & GUICtrlRead($TH8txtNumWall) & "         "
					If GUICtrlRead($TH8txtNumWall) >= 100 Then
						$8Wall = "|" & GUICtrlRead($TH8txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWall) >= 0 Then
			$9Wall = "|" & GUICtrlRead($TH9txtNumWall) & "          "
			If GUICtrlRead($TH9txtNumWall) >= 10 Then
				$9Wall = "|" & GUICtrlRead($TH9txtNumWall) & "         "
					If GUICtrlRead($TH9txtNumWall) >= 100 Then
						$9Wall = "|" & GUICtrlRead($TH9txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWall) >= 0 Then
			$10Wall = "|" & GUICtrlRead($TH10txtNumWall) & "          "
			If GUICtrlRead($TH10txtNumWall) >= 10 Then
				$10Wall = "|" & GUICtrlRead($TH10txtNumWall) & "         "
					If GUICtrlRead($TH10txtNumWall) >= 100 Then
						$10Wall = "|" & GUICtrlRead($TH10txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWall) >= 0 Then
			$11Wall = "|" & GUICtrlRead($TH11txtNumWall) & "          "
			If GUICtrlRead($TH11txtNumWall) >= 10 Then
				$11Wall = "|" & GUICtrlRead($TH11txtNumWall) & "         "
					If GUICtrlRead($TH11txtNumWall) >= 100 Then
						$11Wall = "|" & GUICtrlRead($TH11txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWall) >= 0 Then
			$12Wall = "|" & GUICtrlRead($TH12txtNumWall) & "          "
			If GUICtrlRead($TH12txtNumWall) >= 10 Then
				$12Wall = "|" & GUICtrlRead($TH12txtNumWall) & "         "
					If GUICtrlRead($TH12txtNumWall) >= 100 Then
						$12Wall = "|" & GUICtrlRead($TH12txtNumWall) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumWall) >= 0 Then
			$13Wall = "|" & GUICtrlRead($TH13txtNumWall) & "          "
			If GUICtrlRead($TH13txtNumWall) >= 10 Then
				$13Wall = "|" & GUICtrlRead($TH13txtNumWall) & "         "
					If GUICtrlRead($TH13txtNumWall) >= 100 Then
						$13Wall = "|" & GUICtrlRead($TH13txtNumWall) & "        "
					EndIf
			EndIf
		EndIf


	  $TrainWallB = "TRAIN |Wall       " & $6Wall & $7Wall & $8Wall & $9Wall & $10Wall & $11Wall & $12Wall & $13Wall &"|" & @CRLF
	EndIf


;Balloon

	If GUICtrlRead($TH6txtNumBall) > 0 Or GUICtrlRead($TH7txtNumBall) > 0 Or GUICtrlRead($TH8txtNumBall) > 0 Or GUICtrlRead($TH9txtNumBall) > 0 Or GUICtrlRead($TH10txtNumBall) > 0 Or GUICtrlRead($TH11txtNumBall) > 0 Or GUICtrlRead($TH12txtNumBall) > 0  Or GUICtrlRead($TH13txtNumBall) > 0 Then
		If GUICtrlRead($TH6txtNumBall) >= 0 Then
			$6Ball = "|" & GUICtrlRead($TH6txtNumBall) & "          "
			If GUICtrlRead($TH6txtNumBall) >= 10 Then
				$6Ball = "|" & GUICtrlRead($TH6txtNumBall) & "         "
					If GUICtrlRead($TH6txtNumBall) >= 100 Then
						$6Ball = "|" & GUICtrlRead($TH6txtNumBall) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBall) >= 0 Then
			$7Ball = "|" & GUICtrlRead($TH7txtNumBall) & "          "
			If GUICtrlRead($TH7txtNumBall) >= 10 Then
				$7Ball = "|" & GUICtrlRead($TH7txtNumBall) & "         "
					If GUICtrlRead($TH7txtNumBall) >= 100 Then
						$7Ball = "|" & GUICtrlRead($TH7txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBall) >= 0 Then
			$8Ball = "|" & GUICtrlRead($TH8txtNumBall) & "          "
			If GUICtrlRead($TH8txtNumBall) >= 10 Then
				$8Ball = "|" & GUICtrlRead($TH8txtNumBall) & "         "
					If GUICtrlRead($TH8txtNumBall) >= 100 Then
						$8Ball = "|" & GUICtrlRead($TH8txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBall) >= 0 Then
			$9Ball = "|" & GUICtrlRead($TH9txtNumBall) & "          "
			If GUICtrlRead($TH9txtNumBall) >= 10 Then
				$9Ball = "|" & GUICtrlRead($TH9txtNumBall) & "         "
					If GUICtrlRead($TH9txtNumBall) >= 100 Then
						$9Ball = "|" & GUICtrlRead($TH9txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBall) >= 0 Then
			$10Ball = "|" & GUICtrlRead($TH10txtNumBall) & "          "
			If GUICtrlRead($TH10txtNumBall) >= 10 Then
				$10Ball = "|" & GUICtrlRead($TH10txtNumBall) & "         "
					If GUICtrlRead($TH10txtNumBall) >= 100 Then
						$10Ball = "|" & GUICtrlRead($TH10txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBall) >= 0 Then
			$11Ball = "|" & GUICtrlRead($TH11txtNumBall) & "          "
			If GUICtrlRead($TH11txtNumBall) >= 10 Then
				$11Ball = "|" & GUICtrlRead($TH11txtNumBall) & "         "
					If GUICtrlRead($TH11txtNumBall) >= 100 Then
						$11Ball = "|" & GUICtrlRead($TH11txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBall) >= 0 Then
			$12Ball = "|" & GUICtrlRead($TH12txtNumBall) & "          "
			If GUICtrlRead($TH12txtNumBall) >= 10 Then
				$12Ball = "|" & GUICtrlRead($TH12txtNumBall) & "         "
					If GUICtrlRead($TH12txtNumBall) >= 100 Then
						$12Ball = "|" & GUICtrlRead($TH12txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumBall) >= 0 Then
			$13Ball = "|" & GUICtrlRead($TH13txtNumBall) & "          "
			If GUICtrlRead($TH13txtNumBall) >= 10 Then
				$13Ball = "|" & GUICtrlRead($TH13txtNumBall) & "         "
					If GUICtrlRead($TH13txtNumBall) >= 100 Then
						$13Ball = "|" & GUICtrlRead($TH13txtNumBall) & "        "
					EndIf
			EndIf
		EndIf
		$TrainBalloon = "TRAIN |Ball       " & $6Ball & $7Ball & $8Ball & $9Ball & $10Ball & $11Ball & $12Ball & $13Ball &"|" & @CRLF
	EndIf


;Wizard

	If GUICtrlRead($TH6txtNumWiza) > 0 Or GUICtrlRead($TH7txtNumWiza) > 0 Or GUICtrlRead($TH8txtNumWiza) > 0 Or GUICtrlRead($TH9txtNumWiza) > 0 Or GUICtrlRead($TH10txtNumWiza) > 0 Or GUICtrlRead($TH11txtNumWiza) > 0 Or GUICtrlRead($TH12txtNumWiza) > 0 Or GUICtrlRead($TH13txtNumWiza) > 0 Then
		If GUICtrlRead($TH6txtNumWiza) >= 0 Then
			$6Wiza = "|" & GUICtrlRead($TH6txtNumWiza) & "          "
			If GUICtrlRead($TH6txtNumWiza) >= 10 Then
				$6Wiza = "|" & GUICtrlRead($TH6txtNumWiza) & "         "
					If GUICtrlRead($TH6txtNumWiza) >= 100 Then
						$6Wiza = "|" & GUICtrlRead($TH6txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWiza) >= 0 Then
			$7Wiza = "|" & GUICtrlRead($TH7txtNumWiza) & "          "
			If GUICtrlRead($TH7txtNumWiza) >= 10 Then
				$7Wiza = "|" & GUICtrlRead($TH7txtNumWiza) & "         "
					If GUICtrlRead($TH7txtNumWiza) >= 100 Then
						$7Wiza = "|" & GUICtrlRead($TH7txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWiza) >= 0 Then
			$8Wiza = "|" & GUICtrlRead($TH8txtNumWiza) & "          "
			If GUICtrlRead($TH8txtNumWiza) >= 10 Then
				$8Wiza = "|" & GUICtrlRead($TH8txtNumWiza) & "         "
					If GUICtrlRead($TH8txtNumWiza) >= 100 Then
						$8Wiza = "|" & GUICtrlRead($TH8txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWiza) >= 0 Then
			$9Wiza = "|" & GUICtrlRead($TH9txtNumWiza) & "          "
			If GUICtrlRead($TH9txtNumWiza) >= 10 Then
				$9Wiza = "|" & GUICtrlRead($TH9txtNumWiza) & "         "
					If GUICtrlRead($TH9txtNumWiza) >= 100 Then
						$9Wiza = "|" & GUICtrlRead($TH9txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWiza) >= 0 Then
			$10Wiza = "|" & GUICtrlRead($TH10txtNumWiza) & "          "
			If GUICtrlRead($TH10txtNumWiza) >= 10 Then
				$10Wiza = "|" & GUICtrlRead($TH10txtNumWiza) & "         "
					If GUICtrlRead($TH10txtNumWiza) >= 100 Then
						$10Wiza = "|" & GUICtrlRead($TH10txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWiza) >= 0 Then
			$11Wiza = "|" & GUICtrlRead($TH11txtNumWiza) & "          "
			If GUICtrlRead($TH11txtNumWiza) >= 10 Then
				$11Wiza = "|" & GUICtrlRead($TH11txtNumWiza) & "         "
					If GUICtrlRead($TH11txtNumWiza) >= 100 Then
						$11Wiza = "|" & GUICtrlRead($TH11txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWiza) >= 0 Then
			$12Wiza = "|" & GUICtrlRead($TH12txtNumWiza) & "          "
			If GUICtrlRead($TH12txtNumWiza) >= 10 Then
				$12Wiza = "|" & GUICtrlRead($TH12txtNumWiza) & "         "
					If GUICtrlRead($TH12txtNumWiza) >= 100 Then
						$12Wiza = "|" & GUICtrlRead($TH12txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumWiza) >= 0 Then
			$13Wiza = "|" & GUICtrlRead($TH13txtNumWiza) & "          "
			If GUICtrlRead($TH13txtNumWiza) >= 10 Then
				$13Wiza = "|" & GUICtrlRead($TH13txtNumWiza) & "         "
					If GUICtrlRead($TH13txtNumWiza) >= 100 Then
						$13Wiza = "|" & GUICtrlRead($TH13txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainWizard = "TRAIN |Wiza       " & $6Wiza & $7Wiza & $8Wiza & $9Wiza & $10Wiza & $11Wiza & $12Wiza & $13Wiza &"|" & @CRLF
	EndIf



;Healer

	If GUICtrlRead($TH6txtNumHeal) > 0 Or GUICtrlRead($TH7txtNumHeal) > 0 Or GUICtrlRead($TH8txtNumHeal) > 0 Or GUICtrlRead($TH9txtNumHeal) > 0 Or GUICtrlRead($TH10txtNumHeal) > 0 Or GUICtrlRead($TH11txtNumHeal) > 0 Or GUICtrlRead($TH12txtNumHeal) > 0  Or GUICtrlRead($TH13txtNumHeal) > 0 Then
		If GUICtrlRead($TH6txtNumHeal) >= 0 Then
			$6Heal = "|" & GUICtrlRead($TH6txtNumHeal) & "          "
			If GUICtrlRead($TH6txtNumHeal) >= 10 Then
				$6Heal = "|" & GUICtrlRead($TH6txtNumHeal) & "         "
					If GUICtrlRead($TH6txtNumHeal) >= 100 Then
						$6Heal = "|" & GUICtrlRead($TH6txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHeal) >= 0 Then
			$7Heal = "|" & GUICtrlRead($TH7txtNumHeal) & "          "
			If GUICtrlRead($TH7txtNumHeal) >= 10 Then
				$7Heal = "|" & GUICtrlRead($TH7txtNumHeal) & "         "
					If GUICtrlRead($TH7txtNumHeal) >= 100 Then
						$7Heal = "|" & GUICtrlRead($TH7txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHeal) >= 0 Then
			$8Heal = "|" & GUICtrlRead($TH8txtNumHeal) & "          "
			If GUICtrlRead($TH8txtNumHeal) >= 10 Then
				$8Heal = "|" & GUICtrlRead($TH8txtNumHeal) & "         "
					If GUICtrlRead($TH8txtNumHeal) >= 100 Then
						$8Heal = "|" & GUICtrlRead($TH8txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHeal) >= 0 Then
			$9Heal = "|" & GUICtrlRead($TH9txtNumHeal) & "          "
			If GUICtrlRead($TH9txtNumHeal) >= 10 Then
				$9Heal = "|" & GUICtrlRead($TH9txtNumHeal) & "         "
					If GUICtrlRead($TH9txtNumHeal) >= 100 Then
						$9Heal = "|" & GUICtrlRead($TH9txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHeal) >= 0 Then
			$10Heal = "|" & GUICtrlRead($TH10txtNumHeal) & "          "
			If GUICtrlRead($TH10txtNumHeal) >= 10 Then
				$10Heal = "|" & GUICtrlRead($TH10txtNumHeal) & "         "
					If GUICtrlRead($TH10txtNumHeal) >= 100 Then
						$10Heal = "|" & GUICtrlRead($TH10txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHeal) >= 0 Then
			$11Heal = "|" & GUICtrlRead($TH11txtNumHeal) & "          "
			If GUICtrlRead($TH11txtNumHeal) >= 10 Then
				$11Heal = "|" & GUICtrlRead($TH11txtNumHeal) & "         "
					If GUICtrlRead($TH11txtNumHeal) >= 100 Then
						$11Heal = "|" & GUICtrlRead($TH11txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHeal) >= 0 Then
			$12Heal = "|" & GUICtrlRead($TH12txtNumHeal) & "          "
			If GUICtrlRead($TH12txtNumHeal) >= 10 Then
				$12Heal = "|" & GUICtrlRead($TH12txtNumHeal) & "         "
					If GUICtrlRead($TH12txtNumHeal) >= 100 Then
						$12Heal = "|" & GUICtrlRead($TH12txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHeal) >= 0 Then
			$13Heal = "|" & GUICtrlRead($TH13txtNumHeal) & "          "
			If GUICtrlRead($TH13txtNumHeal) >= 10 Then
				$13Heal = "|" & GUICtrlRead($TH13txtNumHeal) & "         "
					If GUICtrlRead($TH13txtNumHeal) >= 100 Then
						$13Heal = "|" & GUICtrlRead($TH13txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHealer = "TRAIN |Heal       " & $6Heal & $7Heal & $8Heal & $9Heal & $10Heal & $11Heal & $12Heal & $13Heal &"|" & @CRLF
	EndIf

;Dragon

	If GUICtrlRead($TH6txtNumDrag) > 0 Or GUICtrlRead($TH7txtNumDrag) > 0 Or GUICtrlRead($TH8txtNumDrag) > 0 Or GUICtrlRead($TH9txtNumDrag) > 0 Or GUICtrlRead($TH10txtNumDrag) > 0 Or GUICtrlRead($TH11txtNumDrag) > 0 Or GUICtrlRead($TH12txtNumDrag) > 0 Or GUICtrlRead($TH13txtNumDrag) > 0 Then
		If GUICtrlRead($TH6txtNumDrag) >= 0 Then
			$6Drag = "|" & GUICtrlRead($TH6txtNumDrag) & "          "
			If GUICtrlRead($TH6txtNumDrag) >= 10 Then
				$6Drag = "|" & GUICtrlRead($TH6txtNumDrag) & "         "
					If GUICtrlRead($TH6txtNumDrag) >= 100 Then
						$6Drag = "|" & GUICtrlRead($TH6txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumDrag) >= 0 Then
			$7Drag = "|" & GUICtrlRead($TH7txtNumDrag) & "          "
			If GUICtrlRead($TH7txtNumDrag) >= 10 Then
				$7Drag = "|" & GUICtrlRead($TH7txtNumDrag) & "         "
					If GUICtrlRead($TH7txtNumDrag) >= 100 Then
						$7Drag = "|" & GUICtrlRead($TH7txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumDrag) >= 0 Then
			$8Drag = "|" & GUICtrlRead($TH8txtNumDrag) & "          "
			If GUICtrlRead($TH8txtNumDrag) >= 10 Then
				$8Drag = "|" & GUICtrlRead($TH8txtNumDrag) & "         "
					If GUICtrlRead($TH8txtNumDrag) >= 100 Then
						$8Drag = "|" & GUICtrlRead($TH8txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumDrag) >= 0 Then
			$9Drag = "|" & GUICtrlRead($TH9txtNumDrag) & "          "
			If GUICtrlRead($TH9txtNumDrag) >= 10 Then
				$9Drag = "|" & GUICtrlRead($TH9txtNumDrag) & "         "
					If GUICtrlRead($TH9txtNumDrag) >= 100 Then
						$9Drag = "|" & GUICtrlRead($TH9txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumDrag) >= 0 Then
			$10Drag = "|" & GUICtrlRead($TH10txtNumDrag) & "          "
			If GUICtrlRead($TH10txtNumDrag) >= 10 Then
				$10Drag = "|" & GUICtrlRead($TH10txtNumDrag) & "         "
					If GUICtrlRead($TH10txtNumDrag) >= 100 Then
						$10Drag = "|" & GUICtrlRead($TH10txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumDrag) >= 0 Then
			$11Drag = "|" & GUICtrlRead($TH11txtNumDrag) & "          "
			If GUICtrlRead($TH11txtNumDrag) >= 10 Then
				$11Drag = "|" & GUICtrlRead($TH11txtNumDrag) & "         "
					If GUICtrlRead($TH11txtNumDrag) >= 100 Then
						$11Drag = "|" & GUICtrlRead($TH11txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumDrag) >= 0 Then
			$12Drag = "|" & GUICtrlRead($TH12txtNumDrag) & "          "
			If GUICtrlRead($TH12txtNumDrag) >= 10 Then
				$12Drag = "|" & GUICtrlRead($TH12txtNumDrag) & "         "
					If GUICtrlRead($TH12txtNumDrag) >= 100 Then
						$12Drag = "|" & GUICtrlRead($TH12txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumDrag) >= 0 Then
			$13Drag = "|" & GUICtrlRead($TH13txtNumDrag) & "          "
			If GUICtrlRead($TH13txtNumDrag) >= 10 Then
				$13Drag = "|" & GUICtrlRead($TH13txtNumDrag) & "         "
					If GUICtrlRead($TH13txtNumDrag) >= 100 Then
						$13Drag = "|" & GUICtrlRead($TH13txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainDragon = "TRAIN |Drag       " & $6Drag & $7Drag & $8Drag & $9Drag & $10Drag & $11Drag & $12Drag & $13Drag &"|" & @CRLF
	EndIf


;Pekka

	If GUICtrlRead($TH6txtNumPekk) > 0 Or GUICtrlRead($TH7txtNumPekk) > 0 Or GUICtrlRead($TH8txtNumPekk) > 0 Or GUICtrlRead($TH9txtNumPekk) > 0 Or GUICtrlRead($TH10txtNumPekk) > 0 Or GUICtrlRead($TH11txtNumPekk) > 0 Or GUICtrlRead($TH12txtNumPekk) > 0 Or GUICtrlRead($TH13txtNumPekk) > 0 Then
		If GUICtrlRead($TH6txtNumPekk) >= 0 Then
			$6Pekk = "|" & GUICtrlRead($TH6txtNumPekk) & "          "
			If GUICtrlRead($TH6txtNumPekk) >= 10 Then
				$6Pekk = "|" & GUICtrlRead($TH6txtNumPekk) & "         "
					If GUICtrlRead($TH6txtNumPekk) >= 100 Then
						$6Pekk = "|" & GUICtrlRead($TH6txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumPekk) >= 0 Then
			$7Pekk = "|" & GUICtrlRead($TH7txtNumPekk) & "          "
			If GUICtrlRead($TH7txtNumPekk) >= 10 Then
				$7Pekk = "|" & GUICtrlRead($TH7txtNumPekk) & "         "
					If GUICtrlRead($TH7txtNumPekk) >= 100 Then
						$7Pekk = "|" & GUICtrlRead($TH7txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumPekk) >= 0 Then
			$8Pekk = "|" & GUICtrlRead($TH8txtNumPekk) & "          "
			If GUICtrlRead($TH8txtNumPekk) >= 10 Then
				$8Pekk = "|" & GUICtrlRead($TH8txtNumPekk) & "         "
					If GUICtrlRead($TH8txtNumPekk) >= 100 Then
						$8Pekk = "|" & GUICtrlRead($TH8txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumPekk) >= 0 Then
			$9Pekk = "|" & GUICtrlRead($TH9txtNumPekk) & "          "
			If GUICtrlRead($TH9txtNumPekk) >= 10 Then
				$9Pekk = "|" & GUICtrlRead($TH9txtNumPekk) & "         "
					If GUICtrlRead($TH9txtNumPekk) >= 100 Then
						$9Pekk = "|" & GUICtrlRead($TH9txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumPekk) >= 0 Then
			$10Pekk = "|" & GUICtrlRead($TH10txtNumPekk) & "          "
			If GUICtrlRead($TH10txtNumPekk) >= 10 Then
				$10Pekk = "|" & GUICtrlRead($TH10txtNumPekk) & "         "
					If GUICtrlRead($TH10txtNumPekk) >= 100 Then
						$10Pekk = "|" & GUICtrlRead($TH10txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumPekk) >= 0 Then
			$11Pekk = "|" & GUICtrlRead($TH11txtNumPekk) & "          "
			If GUICtrlRead($TH11txtNumPekk) >= 10 Then
				$11Pekk = "|" & GUICtrlRead($TH11txtNumPekk) & "         "
					If GUICtrlRead($TH11txtNumPekk) >= 100 Then
						$11Pekk = "|" & GUICtrlRead($TH11txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumPekk) >= 0 Then
			$12Pekk = "|" & GUICtrlRead($TH12txtNumPekk) & "          "
			If GUICtrlRead($TH12txtNumPekk) >= 10 Then
				$12Pekk = "|" & GUICtrlRead($TH12txtNumPekk) & "         "
					If GUICtrlRead($TH12txtNumPekk) >= 100 Then
						$12Pekk = "|" & GUICtrlRead($TH12txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumPekk) >= 0 Then
			$13Pekk = "|" & GUICtrlRead($TH13txtNumPekk) & "          "
			If GUICtrlRead($TH13txtNumPekk) >= 10 Then
				$13Pekk = "|" & GUICtrlRead($TH13txtNumPekk) & "         "
					If GUICtrlRead($TH13txtNumPekk) >= 100 Then
						$13Pekk = "|" & GUICtrlRead($TH13txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainPekka = "TRAIN |Pekk       " & $6Pekk & $7Pekk & $8Pekk & $9Pekk & $10Pekk & $11Pekk & $12Pekk & $13Pekk &"|" & @CRLF
	EndIf




;BabyDragon

	If GUICtrlRead($TH6txtNumBabyDragon) > 0 Or GUICtrlRead($TH7txtNumBabyDragon) > 0 Or GUICtrlRead($TH8txtNumBabyDragon) > 0 Or GUICtrlRead($TH9txtNumBabyDragon) > 0 Or GUICtrlRead($TH10txtNumBabyDragon) > 0 Or GUICtrlRead($TH11txtNumBabyDragon) > 0 Or GUICtrlRead($TH12txtNumBabyDragon) > 0 Or GUICtrlRead($TH13txtNumBabyDragon) > 0 Then
		If GUICtrlRead($TH6txtNumBabyDragon) >= 0 Then
			$6BabyDragon = "|" & GUICtrlRead($TH6txtNumBabyDragon) & "          "
			If GUICtrlRead($TH6txtNumBabyDragon) >= 10 Then
				$6BabyDragon = "|" & GUICtrlRead($TH6txtNumBabyDragon) & "         "
					If GUICtrlRead($TH6txtNumBabyDragon) >= 100 Then
						$6BabyDragon = "|" & GUICtrlRead($TH6txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBabyDragon) >= 0 Then
			$7BabyDragon = "|" & GUICtrlRead($TH7txtNumBabyDragon) & "          "
			If GUICtrlRead($TH7txtNumBabyDragon) >= 10 Then
				$7BabyDragon = "|" & GUICtrlRead($TH7txtNumBabyDragon) & "         "
					If GUICtrlRead($TH7txtNumBabyDragon) >= 100 Then
						$7BabyDragon = "|" & GUICtrlRead($TH7txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBabyDragon) >= 0 Then
			$8BabyDragon = "|" & GUICtrlRead($TH8txtNumBabyDragon) & "          "
			If GUICtrlRead($TH8txtNumBabyDragon) >= 10 Then
				$8BabyDragon = "|" & GUICtrlRead($TH8txtNumBabyDragon) & "         "
					If GUICtrlRead($TH8txtNumBabyDragon) >= 100 Then
						$8BabyDragon = "|" & GUICtrlRead($TH8txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBabyDragon) >= 0 Then
			$9BabyDragon = "|" & GUICtrlRead($TH9txtNumBabyDragon) & "          "
			If GUICtrlRead($TH9txtNumBabyDragon) >= 10 Then
				$9BabyDragon = "|" & GUICtrlRead($TH9txtNumBabyDragon) & "         "
					If GUICtrlRead($TH9txtNumBabyDragon) >= 100 Then
						$9BabyDragon = "|" & GUICtrlRead($TH9txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBabyDragon) >= 0 Then
			$10BabyDragon = "|" & GUICtrlRead($TH10txtNumBabyDragon) & "          "
			If GUICtrlRead($TH10txtNumBabyDragon) >= 10 Then
				$10BabyDragon = "|" & GUICtrlRead($TH10txtNumBabyDragon) & "         "
					If GUICtrlRead($TH10txtNumBabyDragon) >= 100 Then
						$10BabyDragon = "|" & GUICtrlRead($TH10txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBabyDragon) >= 0 Then
			$11BabyDragon = "|" & GUICtrlRead($TH11txtNumBabyDragon) & "          "
			If GUICtrlRead($TH11txtNumBabyDragon) >= 10 Then
				$11BabyDragon = "|" & GUICtrlRead($TH11txtNumBabyDragon) & "         "
					If GUICtrlRead($TH11txtNumBabyDragon) >= 100 Then
						$11BabyDragon = "|" & GUICtrlRead($TH11txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBabyDragon) >= 0 Then
			$12BabyDragon = "|" & GUICtrlRead($TH12txtNumBabyDragon) & "          "
			If GUICtrlRead($TH12txtNumBabyDragon) >= 10 Then
				$12BabyDragon = "|" & GUICtrlRead($TH12txtNumBabyDragon) & "         "
					If GUICtrlRead($TH12txtNumBabyDragon) >= 100 Then
						$12BabyDragon = "|" & GUICtrlRead($TH12txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBabyDragon) >= 0 Then
			$13BabyDragon = "|" & GUICtrlRead($TH13txtNumBabyDragon) & "          "
			If GUICtrlRead($TH13txtNumBabyDragon) >= 10 Then
				$13BabyDragon = "|" & GUICtrlRead($TH13txtNumBabyDragon) & "         "
					If GUICtrlRead($TH13txtNumBabyDragon) >= 100 Then
						$13BabyDragon = "|" & GUICtrlRead($TH13txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBabyDragon = "TRAIN |BabyD      " & $6BabyDragon & $7BabyDragon & $8BabyDragon & $9BabyDragon & $10BabyDragon & $11BabyDragon & $12BabyDragon & $12BabyDragon &"|" & @CRLF
	EndIf


;Miner

	If GUICtrlRead($TH6txtNumMiner) > 0 Or GUICtrlRead($TH7txtNumMiner) > 0 Or GUICtrlRead($TH8txtNumMiner) > 0 Or GUICtrlRead($TH9txtNumMiner) > 0 Or GUICtrlRead($TH10txtNumMiner) > 0 Or GUICtrlRead($TH11txtNumMiner) > 0 Or GUICtrlRead($TH12txtNumMiner) > 0  Or GUICtrlRead($TH13txtNumMiner) > 0 Then
		If GUICtrlRead($TH6txtNumMiner) >= 0 Then
			$6Miner = "|" & GUICtrlRead($TH6txtNumMiner) & "          "
			If GUICtrlRead($TH6txtNumMiner) >= 10 Then
				$6Miner = "|" & GUICtrlRead($TH6txtNumMiner) & "         "
					If GUICtrlRead($TH6txtNumMiner) >= 100 Then
						$6Miner = "|" & GUICtrlRead($TH6txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumMiner) >= 0 Then
			$7Miner = "|" & GUICtrlRead($TH7txtNumMiner) & "          "
			If GUICtrlRead($TH7txtNumMiner) >= 10 Then
				$7Miner = "|" & GUICtrlRead($TH7txtNumMiner) & "         "
					If GUICtrlRead($TH7txtNumMiner) >= 100 Then
						$7Miner = "|" & GUICtrlRead($TH7txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumMiner) >= 0 Then
			$8Miner = "|" & GUICtrlRead($TH8txtNumMiner) & "          "
			If GUICtrlRead($TH8txtNumMiner) >= 10 Then
				$8Miner = "|" & GUICtrlRead($TH8txtNumMiner) & "         "
					If GUICtrlRead($TH8txtNumMiner) >= 100 Then
						$8Miner = "|" & GUICtrlRead($TH8txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumMiner) >= 0 Then
			$9Miner = "|" & GUICtrlRead($TH9txtNumMiner) & "          "
			If GUICtrlRead($TH9txtNumMiner) >= 10 Then
				$9Miner = "|" & GUICtrlRead($TH9txtNumMiner) & "         "
					If GUICtrlRead($TH9txtNumMiner) >= 100 Then
						$9Miner = "|" & GUICtrlRead($TH9txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumMiner) >= 0 Then
			$10Miner = "|" & GUICtrlRead($TH10txtNumMiner) & "          "
			If GUICtrlRead($TH10txtNumMiner) >= 10 Then
				$10Miner = "|" & GUICtrlRead($TH10txtNumMiner) & "         "
					If GUICtrlRead($TH10txtNumMiner) >= 100 Then
						$10Miner = "|" & GUICtrlRead($TH10txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumMiner) >= 0 Then
			$11Miner = "|" & GUICtrlRead($TH11txtNumMiner) & "          "
			If GUICtrlRead($TH11txtNumMiner) >= 10 Then
				$11Miner = "|" & GUICtrlRead($TH11txtNumMiner) & "         "
					If GUICtrlRead($TH11txtNumMiner) >= 100 Then
						$11Miner = "|" & GUICtrlRead($TH11txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumMiner) >= 0 Then
			$12Miner = "|" & GUICtrlRead($TH12txtNumMiner) & "          "
			If GUICtrlRead($TH12txtNumMiner) >= 10 Then
				$12Miner = "|" & GUICtrlRead($TH12txtNumMiner) & "         "
					If GUICtrlRead($TH12txtNumMiner) >= 100 Then
						$12Miner = "|" & GUICtrlRead($TH12txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumMiner) >= 0 Then
			$13Miner = "|" & GUICtrlRead($TH13txtNumMiner) & "          "
			If GUICtrlRead($TH13txtNumMiner) >= 10 Then
				$13Miner = "|" & GUICtrlRead($TH13txtNumMiner) & "         "
					If GUICtrlRead($TH13txtNumMiner) >= 100 Then
						$13Miner = "|" & GUICtrlRead($TH13txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainMiner = "TRAIN |Mine       " & $6Miner & $7Miner & $8Miner & $9Miner & $10Miner & $11Miner & $12Miner & $13Miner &"|" & @CRLF
	EndIf

   ;Electro Dragon

	If GUICtrlRead($TH6txtNumEdrag) > 0 Or GUICtrlRead($TH7txtNumEdrag) > 0 Or GUICtrlRead($TH8txtNumEdrag) > 0 Or GUICtrlRead($TH9txtNumEdrag) > 0 Or GUICtrlRead($TH10txtNumEdrag) > 0 Or GUICtrlRead($TH11txtNumEdrag) > 0 Or GUICtrlRead($TH12txtNumEdrag) > 0 Or GUICtrlRead($TH13txtNumEdrag) > 0 Then
		If GUICtrlRead($TH6txtNumEdrag) >= 0 Then
			$6Edrag = "|" & GUICtrlRead($TH6txtNumEdrag) & "          "
			If GUICtrlRead($TH6txtNumEdrag) >= 10 Then
				$6Edrag = "|" & GUICtrlRead($TH6txtNumEdrag) & "         "
					If GUICtrlRead($TH6txtNumEdrag) >= 100 Then
						$6Edrag = "|" & GUICtrlRead($TH6txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumEdrag) >= 0 Then
			$7Edrag = "|" & GUICtrlRead($TH7txtNumEdrag) & "          "
			If GUICtrlRead($TH7txtNumEdrag) >= 10 Then
				$7Edrag = "|" & GUICtrlRead($TH7txtNumEdrag) & "         "
					If GUICtrlRead($TH7txtNumEdrag) >= 100 Then
						$7Edrag = "|" & GUICtrlRead($TH7txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumEdrag) >= 0 Then
			$8Edrag = "|" & GUICtrlRead($TH8txtNumEdrag) & "          "
			If GUICtrlRead($TH8txtNumEdrag) >= 10 Then
				$8Edrag = "|" & GUICtrlRead($TH8txtNumEdrag) & "         "
					If GUICtrlRead($TH8txtNumEdrag) >= 100 Then
						$8Edrag = "|" & GUICtrlRead($TH8txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumEdrag) >= 0 Then
			$9Edrag = "|" & GUICtrlRead($TH9txtNumEdrag) & "          "
			If GUICtrlRead($TH9txtNumEdrag) >= 10 Then
				$9Edrag = "|" & GUICtrlRead($TH9txtNumEdrag) & "         "
					If GUICtrlRead($TH9txtNumEdrag) >= 100 Then
						$9Edrag = "|" & GUICtrlRead($TH9txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumEdrag) >= 0 Then
			$10Edrag = "|" & GUICtrlRead($TH10txtNumEdrag) & "          "
			If GUICtrlRead($TH10txtNumEdrag) >= 10 Then
				$10Edrag = "|" & GUICtrlRead($TH10txtNumEdrag) & "         "
					If GUICtrlRead($TH10txtNumEdrag) >= 100 Then
						$10Edrag = "|" & GUICtrlRead($TH10txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumEdrag) >= 0 Then
			$11Edrag = "|" & GUICtrlRead($TH11txtNumEdrag) & "          "
			If GUICtrlRead($TH11txtNumEdrag) >= 10 Then
				$11Edrag = "|" & GUICtrlRead($TH11txtNumEdrag) & "         "
					If GUICtrlRead($TH11txtNumEdrag) >= 100 Then
						$11Edrag = "|" & GUICtrlRead($TH11txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumEdrag) >= 0 Then
			$12Edrag = "|" & GUICtrlRead($TH12txtNumEdrag) & "          "
			If GUICtrlRead($TH12txtNumEdrag) >= 10 Then
				$12Edrag = "|" & GUICtrlRead($TH12txtNumEdrag) & "         "
					If GUICtrlRead($TH12txtNumEdrag) >= 100 Then
						$12Edrag = "|" & GUICtrlRead($TH12txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumEdrag) >= 0 Then
			$13Edrag = "|" & GUICtrlRead($TH13txtNumEdrag) & "          "
			If GUICtrlRead($TH13txtNumEdrag) >= 10 Then
				$13Edrag = "|" & GUICtrlRead($TH13txtNumEdrag) & "         "
					If GUICtrlRead($TH13txtNumEdrag) >= 100 Then
						$13Edrag = "|" & GUICtrlRead($TH13txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainEdrag = "TRAIN |EDrag      " & $6Edrag & $7Edrag & $8Edrag & $9Edrag & $10Edrag & $11Edrag & $12Edrag & $13Edrag &"|" & @CRLF
	EndIf

   ;Yeti

	If GUICtrlRead($TH6txtNumYeti) > 0 Or GUICtrlRead($TH7txtNumYeti) > 0 Or GUICtrlRead($TH8txtNumYeti) > 0 Or GUICtrlRead($TH9txtNumYeti) > 0 Or GUICtrlRead($TH10txtNumYeti) > 0 Or GUICtrlRead($TH11txtNumYeti) > 0 Or GUICtrlRead($TH12txtNumYeti) > 0  Or GUICtrlRead($TH13txtNumYeti) > 0 Then
;~ 		If GUICtrlRead($TH6txtNumYeti) >= 0 Then
;~ 			$6Yeti = "|" & GUICtrlRead($TH6txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH6txtNumYeti) >= 10 Then
;~ 				$6Yeti = "|" & GUICtrlRead($TH6txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH6txtNumYeti) >= 100 Then
						$6Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf
;~ 		If GUICtrlRead($TH7txtNumYeti) >= 0 Then
;~ 			$7Yeti = "|" & GUICtrlRead($TH7txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH7txtNumYeti) >= 10 Then
;~ 				$7Yeti = "|" & GUICtrlRead($TH7txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH7txtNumYeti) >= 100 Then
						$7Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH8txtNumYeti) >= 0 Then
;~ 			$8Yeti = "|" & GUICtrlRead($TH8txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH8txtNumYeti) >= 10 Then
;~ 				$8Yeti = "|" & GUICtrlRead($TH8txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH8txtNumYeti) >= 100 Then
						$8Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH9txtNumYeti) >= 0 Then
;~ 			$9Yeti = "|" & GUICtrlRead($TH9txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH9txtNumYeti) >= 10 Then
;~ 				$9Yeti = "|" & GUICtrlRead($TH9txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH9txtNumYeti) >= 100 Then
						$9Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH10txtNumYeti) >= 0 Then
;~ 			$10Yeti = "|" & GUICtrlRead($TH10txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH10txtNumYeti) >= 10 Then
;~ 				$10Yeti = "|" & GUICtrlRead($TH10txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH10txtNumYeti) >= 100 Then
						$10Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH11txtNumYeti) >= 0 Then
;~ 			$11Yeti = "|" & GUICtrlRead($TH11txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH11txtNumYeti) >= 10 Then
;~ 				$11Yeti = "|" & GUICtrlRead($TH11txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH11txtNumYeti) >= 100 Then
						$11Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

		If GUICtrlRead($TH12txtNumYeti) >= 0 Then
			$12Yeti = "|" & GUICtrlRead($TH12txtNumYeti) & "          "
			If GUICtrlRead($TH12txtNumYeti) >= 10 Then
				$12Yeti = "|" & GUICtrlRead($TH12txtNumYeti) & "         "
					If GUICtrlRead($TH12txtNumYeti) >= 100 Then
						$12Yeti = "|" & GUICtrlRead($TH12txtNumYeti) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumYeti) >= 0 Then
			$13Yeti = "|" & GUICtrlRead($TH13txtNumYeti) & "          "
			If GUICtrlRead($TH13txtNumYeti) >= 10 Then
				$13Yeti = "|" & GUICtrlRead($TH13txtNumYeti) & "         "
					If GUICtrlRead($TH13txtNumYeti) >= 100 Then
						$13Yeti = "|" & GUICtrlRead($TH13txtNumYeti) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainYeti = "TRAIN |Yeti       " & $6Yeti & $7Yeti & $8Yeti & $9Yeti & $10Yeti & $11Yeti & $12Yeti & $13Yeti &"|" & @CRLF
	EndIf



   ;Minion

	If GUICtrlRead($TH6txtNumMini) > 0 Or GUICtrlRead($TH7txtNumMini) > 0 Or GUICtrlRead($TH8txtNumMini) > 0 Or GUICtrlRead($TH9txtNumMini) > 0 Or GUICtrlRead($TH10txtNumMini) > 0 Or GUICtrlRead($TH11txtNumMini) > 0 Or GUICtrlRead($TH12txtNumMini) > 0 Or GUICtrlRead($TH13txtNumMini) > 0 Then
		If GUICtrlRead($TH6txtNumMini) >= 0 Then
			$6Mini = "|" & GUICtrlRead($TH6txtNumMini) & "          "
			If GUICtrlRead($TH6txtNumMini) >= 10 Then
				$6Mini = "|" & GUICtrlRead($TH6txtNumMini) & "         "
					If GUICtrlRead($TH6txtNumMini) >= 100 Then
						$6Mini = "|" & GUICtrlRead($TH6txtNumMini) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumMini) >= 0 Then
			$7Mini = "|" & GUICtrlRead($TH7txtNumMini) & "          "
			If GUICtrlRead($TH7txtNumMini) >= 10 Then
				$7Mini = "|" & GUICtrlRead($TH7txtNumMini) & "         "
					If GUICtrlRead($TH7txtNumMini) >= 100 Then
						$7Mini = "|" & GUICtrlRead($TH7txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumMini) >= 0 Then
			$8Mini = "|" & GUICtrlRead($TH8txtNumMini) & "          "
			If GUICtrlRead($TH8txtNumMini) >= 10 Then
				$8Mini = "|" & GUICtrlRead($TH8txtNumMini) & "         "
					If GUICtrlRead($TH8txtNumMini) >= 100 Then
						$8Mini = "|" & GUICtrlRead($TH8txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumMini) >= 0 Then
			$9Mini = "|" & GUICtrlRead($TH9txtNumMini) & "          "
			If GUICtrlRead($TH9txtNumMini) >= 10 Then
				$9Mini = "|" & GUICtrlRead($TH9txtNumMini) & "         "
					If GUICtrlRead($TH9txtNumMini) >= 100 Then
						$9Mini = "|" & GUICtrlRead($TH9txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumMini) >= 0 Then
			$10Mini = "|" & GUICtrlRead($TH10txtNumMini) & "          "
			If GUICtrlRead($TH10txtNumMini) >= 10 Then
				$10Mini = "|" & GUICtrlRead($TH10txtNumMini) & "         "
					If GUICtrlRead($TH10txtNumMini) >= 100 Then
						$10Mini = "|" & GUICtrlRead($TH10txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumMini) >= 0 Then
			$11Mini = "|" & GUICtrlRead($TH11txtNumMini) & "          "
			If GUICtrlRead($TH11txtNumMini) >= 10 Then
				$11Mini = "|" & GUICtrlRead($TH11txtNumMini) & "         "
					If GUICtrlRead($TH11txtNumMini) >= 100 Then
						$11Mini = "|" & GUICtrlRead($TH11txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumMini) >= 0 Then
			$12Mini = "|" & GUICtrlRead($TH12txtNumMini) & "          "
			If GUICtrlRead($TH12txtNumMini) >= 10 Then
				$12Mini = "|" & GUICtrlRead($TH12txtNumMini) & "         "
					If GUICtrlRead($TH12txtNumMini) >= 100 Then
						$12Mini = "|" & GUICtrlRead($TH12txtNumMini) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumMini) >= 0 Then
			$13Mini = "|" & GUICtrlRead($TH13txtNumMini) & "          "
			If GUICtrlRead($TH13txtNumMini) >= 10 Then
				$13Mini = "|" & GUICtrlRead($TH13txtNumMini) & "         "
					If GUICtrlRead($TH13txtNumMini) >= 100 Then
						$13Mini = "|" & GUICtrlRead($TH13txtNumMini) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainMini = "TRAIN |Mini       " & $6Mini & $7Mini & $8Mini & $9Mini & $10Mini & $11Mini & $12Mini & $13Mini &"|" & @CRLF
	EndIf



    ;Hogs Rider

	If GUICtrlRead($TH6txtNumHogs) > 0 Or GUICtrlRead($TH7txtNumHogs) > 0 Or GUICtrlRead($TH8txtNumHogs) > 0 Or GUICtrlRead($TH9txtNumHogs) > 0 Or GUICtrlRead($TH10txtNumHogs) > 0 Or GUICtrlRead($TH11txtNumHogs) > 0 Or GUICtrlRead($TH12txtNumHogs) > 0 Or GUICtrlRead($TH13txtNumHogs) > 0 Then
		If GUICtrlRead($TH6txtNumHogs) >= 0 Then
			$6Hogs = "|" & GUICtrlRead($TH6txtNumHogs) & "          "
			If GUICtrlRead($TH6txtNumHogs) >= 10 Then
				$6Hogs = "|" & GUICtrlRead($TH6txtNumHogs) & "         "
					If GUICtrlRead($TH6txtNumHogs) >= 100 Then
						$6Hogs = "|" & GUICtrlRead($TH6txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHogs) >= 0 Then
			$7Hogs = "|" & GUICtrlRead($TH7txtNumHogs) & "          "
			If GUICtrlRead($TH7txtNumHogs) >= 10 Then
				$7Hogs = "|" & GUICtrlRead($TH7txtNumHogs) & "         "
					If GUICtrlRead($TH7txtNumHogs) >= 100 Then
						$7Hogs = "|" & GUICtrlRead($TH7txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHogs) >= 0 Then
			$8Hogs = "|" & GUICtrlRead($TH8txtNumHogs) & "          "
			If GUICtrlRead($TH8txtNumHogs) >= 10 Then
				$8Hogs = "|" & GUICtrlRead($TH8txtNumHogs) & "         "
					If GUICtrlRead($TH8txtNumHogs) >= 100 Then
						$8Hogs = "|" & GUICtrlRead($TH8txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHogs) >= 0 Then
			$9Hogs = "|" & GUICtrlRead($TH9txtNumHogs) & "          "
			If GUICtrlRead($TH9txtNumHogs) >= 10 Then
				$9Hogs = "|" & GUICtrlRead($TH9txtNumHogs) & "         "
					If GUICtrlRead($TH9txtNumHogs) >= 100 Then
						$9Hogs = "|" & GUICtrlRead($TH9txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHogs) >= 0 Then
			$10Hogs = "|" & GUICtrlRead($TH10txtNumHogs) & "          "
			If GUICtrlRead($TH10txtNumHogs) >= 10 Then
				$10Hogs = "|" & GUICtrlRead($TH10txtNumHogs) & "         "
					If GUICtrlRead($TH10txtNumHogs) >= 100 Then
						$10Hogs = "|" & GUICtrlRead($TH10txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHogs) >= 0 Then
			$11Hogs = "|" & GUICtrlRead($TH11txtNumHogs) & "          "
			If GUICtrlRead($TH11txtNumHogs) >= 10 Then
				$11Hogs = "|" & GUICtrlRead($TH11txtNumHogs) & "         "
					If GUICtrlRead($TH11txtNumHogs) >= 100 Then
						$11Hogs = "|" & GUICtrlRead($TH11txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHogs) >= 0 Then
			$12Hogs = "|" & GUICtrlRead($TH12txtNumHogs) & "          "
			If GUICtrlRead($TH12txtNumHogs) >= 10 Then
				$12Hogs = "|" & GUICtrlRead($TH12txtNumHogs) & "         "
					If GUICtrlRead($TH12txtNumHogs) >= 100 Then
						$12Hogs = "|" & GUICtrlRead($TH12txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHogs) >= 0 Then
			$13Hogs = "|" & GUICtrlRead($TH13txtNumHogs) & "          "
			If GUICtrlRead($TH13txtNumHogs) >= 10 Then
				$13Hogs = "|" & GUICtrlRead($TH13txtNumHogs) & "         "
					If GUICtrlRead($TH13txtNumHogs) >= 100 Then
						$13Hogs = "|" & GUICtrlRead($TH13txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHogsRider = "TRAIN |Hogs       " & $6Hogs & $7Hogs & $8Hogs & $9Hogs & $10Hogs & $11Hogs & $12Hogs & $13Hogs &"|" & @CRLF
	EndIf


;Valkyre

	If GUICtrlRead($TH6txtNumValkyre) > 0 Or GUICtrlRead($TH7txtNumValkyre) > 0 Or GUICtrlRead($TH8txtNumValkyre) > 0 Or GUICtrlRead($TH9txtNumValkyre) > 0 Or GUICtrlRead($TH10txtNumValkyre) > 0 Or GUICtrlRead($TH11txtNumValkyre) > 0 Or GUICtrlRead($TH12txtNumValkyre) > 0 Or GUICtrlRead($TH13txtNumValkyre) > 0 Then
		If GUICtrlRead($TH6txtNumValkyre) >= 0 Then
			$6Valkyre = "|" & GUICtrlRead($TH6txtNumValkyre) & "          "
			If GUICtrlRead($TH6txtNumValkyre) >= 10 Then
				$6Valkyre = "|" & GUICtrlRead($TH6txtNumValkyre) & "         "
					If GUICtrlRead($TH6txtNumValkyre) >= 100 Then
						$6Valkyre = "|" & GUICtrlRead($TH6txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumValkyre) >= 0 Then
			$7Valkyre = "|" & GUICtrlRead($TH7txtNumValkyre) & "          "
			If GUICtrlRead($TH7txtNumValkyre) >= 10 Then
				$7Valkyre = "|" & GUICtrlRead($TH7txtNumValkyre) & "         "
					If GUICtrlRead($TH7txtNumValkyre) >= 100 Then
						$7Valkyre = "|" & GUICtrlRead($TH7txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumValkyre) >= 0 Then
			$8Valkyre = "|" & GUICtrlRead($TH8txtNumValkyre) & "          "
			If GUICtrlRead($TH8txtNumValkyre) >= 10 Then
				$8Valkyre = "|" & GUICtrlRead($TH8txtNumValkyre) & "         "
					If GUICtrlRead($TH8txtNumValkyre) >= 100 Then
						$8Valkyre = "|" & GUICtrlRead($TH8txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumValkyre) >= 0 Then
			$9Valkyre = "|" & GUICtrlRead($TH9txtNumValkyre) & "          "
			If GUICtrlRead($TH9txtNumValkyre) >= 10 Then
				$9Valkyre = "|" & GUICtrlRead($TH9txtNumValkyre) & "         "
					If GUICtrlRead($TH9txtNumValkyre) >= 100 Then
						$9Valkyre = "|" & GUICtrlRead($TH9txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumValkyre) >= 0 Then
			$10Valkyre = "|" & GUICtrlRead($TH10txtNumValkyre) & "          "
			If GUICtrlRead($TH10txtNumValkyre) >= 10 Then
				$10Valkyre = "|" & GUICtrlRead($TH10txtNumValkyre) & "         "
					If GUICtrlRead($TH10txtNumValkyre) >= 100 Then
						$10Valkyre = "|" & GUICtrlRead($TH10txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumValkyre) >= 0 Then
			$11Valkyre = "|" & GUICtrlRead($TH11txtNumValkyre) & "          "
			If GUICtrlRead($TH11txtNumValkyre) >= 10 Then
				$11Valkyre = "|" & GUICtrlRead($TH11txtNumValkyre) & "         "
					If GUICtrlRead($TH11txtNumValkyre) >= 100 Then
						$11Valkyre = "|" & GUICtrlRead($TH11txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumValkyre) >= 0 Then
			$12Valkyre = "|" & GUICtrlRead($TH12txtNumValkyre) & "          "
			If GUICtrlRead($TH12txtNumValkyre) >= 10 Then
				$12Valkyre = "|" & GUICtrlRead($TH12txtNumValkyre) & "         "
					If GUICtrlRead($TH12txtNumValkyre) >= 100 Then
						$12Valkyre = "|" & GUICtrlRead($TH12txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumValkyre) >= 0 Then
			$13Valkyre = "|" & GUICtrlRead($TH13txtNumValkyre) & "          "
			If GUICtrlRead($TH13txtNumValkyre) >= 10 Then
				$13Valkyre = "|" & GUICtrlRead($TH13txtNumValkyre) & "         "
					If GUICtrlRead($TH13txtNumValkyre) >= 100 Then
						$13Valkyre = "|" & GUICtrlRead($TH13txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainValkyre = "TRAIN |Valk       " & $6Valkyre & $7Valkyre & $8Valkyre & $9Valkyre & $10Valkyre & $11Valkyre & $12Valkyre & $13Valkyre &"|" & @CRLF
	EndIf


;Golem

	If GUICtrlRead($TH6txtNumGolem) > 0 Or GUICtrlRead($TH7txtNumGolem) > 0 Or GUICtrlRead($TH8txtNumGolem) > 0 Or GUICtrlRead($TH9txtNumGolem) > 0 Or GUICtrlRead($TH10txtNumGolem) > 0 Or GUICtrlRead($TH11txtNumGolem) > 0 Or GUICtrlRead($TH12txtNumGolem) > 0  Or GUICtrlRead($TH13txtNumGolem) > 0 Then
		If GUICtrlRead($TH6txtNumGolem) >= 0 Then
			$6Golem = "|" & GUICtrlRead($TH6txtNumGolem) & "          "
			If GUICtrlRead($TH6txtNumGolem) >= 10 Then
				$6Golem = "|" & GUICtrlRead($TH6txtNumGolem) & "         "
					If GUICtrlRead($TH6txtNumGolem) >= 100 Then
						$6Golem = "|" & GUICtrlRead($TH6txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumGolem) >= 0 Then
			$7Golem = "|" & GUICtrlRead($TH7txtNumGolem) & "          "
			If GUICtrlRead($TH7txtNumGolem) >= 10 Then
				$7Golem = "|" & GUICtrlRead($TH7txtNumGolem) & "         "
					If GUICtrlRead($TH7txtNumGolem) >= 100 Then
						$7Golem = "|" & GUICtrlRead($TH7txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumGolem) >= 0 Then
			$8Golem = "|" & GUICtrlRead($TH8txtNumGolem) & "          "
			If GUICtrlRead($TH8txtNumGolem) >= 10 Then
				$8Golem = "|" & GUICtrlRead($TH8txtNumGolem) & "         "
					If GUICtrlRead($TH8txtNumGolem) >= 100 Then
						$8Golem = "|" & GUICtrlRead($TH8txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumGolem) >= 0 Then
			$9Golem = "|" & GUICtrlRead($TH9txtNumGolem) & "          "
			If GUICtrlRead($TH9txtNumGolem) >= 10 Then
				$9Golem = "|" & GUICtrlRead($TH9txtNumGolem) & "         "
					If GUICtrlRead($TH9txtNumGolem) >= 100 Then
						$9Golem = "|" & GUICtrlRead($TH9txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumGolem) >= 0 Then
			$10Golem = "|" & GUICtrlRead($TH10txtNumGolem) & "          "
			If GUICtrlRead($TH10txtNumGolem) >= 10 Then
				$10Golem = "|" & GUICtrlRead($TH10txtNumGolem) & "         "
					If GUICtrlRead($TH10txtNumGolem) >= 100 Then
						$10Golem = "|" & GUICtrlRead($TH10txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumGolem) >= 0 Then
			$11Golem = "|" & GUICtrlRead($TH11txtNumGolem) & "          "
			If GUICtrlRead($TH11txtNumGolem) >= 10 Then
				$11Golem = "|" & GUICtrlRead($TH11txtNumGolem) & "         "
					If GUICtrlRead($TH11txtNumGolem) >= 100 Then
						$11Golem = "|" & GUICtrlRead($TH11txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumGolem) >= 0 Then
			$12Golem = "|" & GUICtrlRead($TH12txtNumGolem) & "          "
			If GUICtrlRead($TH12txtNumGolem) >= 10 Then
				$12Golem = "|" & GUICtrlRead($TH12txtNumGolem) & "         "
					If GUICtrlRead($TH12txtNumGolem) >= 100 Then
						$12Golem = "|" & GUICtrlRead($TH12txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumGolem) >= 0 Then
			$13Golem = "|" & GUICtrlRead($TH13txtNumGolem) & "          "
			If GUICtrlRead($TH13txtNumGolem) >= 10 Then
				$13Golem = "|" & GUICtrlRead($TH13txtNumGolem) & "         "
					If GUICtrlRead($TH13txtNumGolem) >= 100 Then
						$13Golem = "|" & GUICtrlRead($TH13txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainGolem = "TRAIN |Gole       " & $6Golem & $7Golem & $8Golem & $9Golem & $10Golem & $11Golem & $12Golem & $13Golem &"|" & @CRLF
	EndIf


;Witch

	If GUICtrlRead($TH6txtNumWitch) > 0 Or GUICtrlRead($TH7txtNumWitch) > 0 Or GUICtrlRead($TH8txtNumWitch) > 0 Or GUICtrlRead($TH9txtNumWitch) > 0 Or GUICtrlRead($TH10txtNumWitch) > 0 Or GUICtrlRead($TH11txtNumWitch) > 0 Or GUICtrlRead($TH12txtNumWitch) > 0  Or GUICtrlRead($TH13txtNumWitch) > 0 Then
		If GUICtrlRead($TH6txtNumWitch) >= 0 Then
			$6Witch = "|" & GUICtrlRead($TH6txtNumWitch) & "          "
			If GUICtrlRead($TH6txtNumWitch) >= 10 Then
				$6Witch = "|" & GUICtrlRead($TH6txtNumWitch) & "         "
					If GUICtrlRead($TH6txtNumWitch) >= 100 Then
						$6Witch = "|" & GUICtrlRead($TH6txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWitch) >= 0 Then
			$7Witch = "|" & GUICtrlRead($TH7txtNumWitch) & "          "
			If GUICtrlRead($TH7txtNumWitch) >= 10 Then
				$7Witch = "|" & GUICtrlRead($TH7txtNumWitch) & "         "
					If GUICtrlRead($TH7txtNumWitch) >= 100 Then
						$7Witch = "|" & GUICtrlRead($TH7txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWitch) >= 0 Then
			$8Witch = "|" & GUICtrlRead($TH8txtNumWitch) & "          "
			If GUICtrlRead($TH8txtNumWitch) >= 10 Then
				$8Witch = "|" & GUICtrlRead($TH8txtNumWitch) & "         "
					If GUICtrlRead($TH8txtNumWitch) >= 100 Then
						$8Witch = "|" & GUICtrlRead($TH8txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWitch) >= 0 Then
			$9Witch = "|" & GUICtrlRead($TH9txtNumWitch) & "          "
			If GUICtrlRead($TH9txtNumWitch) >= 10 Then
				$9Witch = "|" & GUICtrlRead($TH9txtNumWitch) & "         "
					If GUICtrlRead($TH9txtNumWitch) >= 100 Then
						$9Witch = "|" & GUICtrlRead($TH9txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWitch) >= 0 Then
			$10Witch = "|" & GUICtrlRead($TH10txtNumWitch) & "          "
			If GUICtrlRead($TH10txtNumWitch) >= 10 Then
				$10Witch = "|" & GUICtrlRead($TH10txtNumWitch) & "         "
					If GUICtrlRead($TH10txtNumWitch) >= 100 Then
						$10Witch = "|" & GUICtrlRead($TH10txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWitch) >= 0 Then
			$11Witch = "|" & GUICtrlRead($TH11txtNumWitch) & "          "
			If GUICtrlRead($TH11txtNumWitch) >= 10 Then
				$11Witch = "|" & GUICtrlRead($TH11txtNumWitch) & "         "
					If GUICtrlRead($TH11txtNumWitch) >= 100 Then
						$11Witch = "|" & GUICtrlRead($TH11txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWitch) >= 0 Then
			$12Witch = "|" & GUICtrlRead($TH12txtNumWitch) & "          "
			If GUICtrlRead($TH12txtNumWitch) >= 10 Then
				$12Witch = "|" & GUICtrlRead($TH12txtNumWitch) & "         "
					If GUICtrlRead($TH12txtNumWitch) >= 100 Then
						$12Witch = "|" & GUICtrlRead($TH12txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumWitch) >= 0 Then
			$13Witch = "|" & GUICtrlRead($TH13txtNumWitch) & "          "
			If GUICtrlRead($TH13txtNumWitch) >= 10 Then
				$13Witch = "|" & GUICtrlRead($TH13txtNumWitch) & "         "
					If GUICtrlRead($TH13txtNumWitch) >= 100 Then
						$13Witch = "|" & GUICtrlRead($TH13txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainWitch = "TRAIN |Witc       " & $6Witch & $7Witch & $8Witch & $9Witch & $10Witch & $11Witch & $12Witch & $13Witch &"|" & @CRLF
	EndIf

;Lava

	If GUICtrlRead($TH6txtNumLava) > 0 Or GUICtrlRead($TH7txtNumLava) > 0 Or GUICtrlRead($TH8txtNumLava) > 0 Or GUICtrlRead($TH9txtNumLava) > 0 Or GUICtrlRead($TH10txtNumLava) > 0 Or GUICtrlRead($TH11txtNumLava) > 0 Or GUICtrlRead($TH12txtNumLava) > 0  Or GUICtrlRead($TH13txtNumLava) > 0 Then
		If GUICtrlRead($TH6txtNumLava) >= 0 Then
			$6Lava = "|" & GUICtrlRead($TH6txtNumLava) & "          "
			If GUICtrlRead($TH6txtNumLava) >= 10 Then
				$6Lava = "|" & GUICtrlRead($TH6txtNumLava) & "         "
					If GUICtrlRead($TH6txtNumLava) >= 100 Then
						$6Lava = "|" & GUICtrlRead($TH6txtNumLava) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumLava) >= 0 Then
			$7Lava = "|" & GUICtrlRead($TH7txtNumLava) & "          "
			If GUICtrlRead($TH7txtNumLava) >= 10 Then
				$7Lava = "|" & GUICtrlRead($TH7txtNumLava) & "         "
					If GUICtrlRead($TH7txtNumLava) >= 100 Then
						$7Lava = "|" & GUICtrlRead($TH7txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumLava) >= 0 Then
			$8Lava = "|" & GUICtrlRead($TH8txtNumLava) & "          "
			If GUICtrlRead($TH8txtNumLava) >= 10 Then
				$8Lava = "|" & GUICtrlRead($TH8txtNumLava) & "         "
					If GUICtrlRead($TH8txtNumLava) >= 100 Then
						$8Lava = "|" & GUICtrlRead($TH8txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumLava) >= 0 Then
			$9Lava = "|" & GUICtrlRead($TH9txtNumLava) & "          "
			If GUICtrlRead($TH9txtNumLava) >= 10 Then
				$9Lava = "|" & GUICtrlRead($TH9txtNumLava) & "         "
					If GUICtrlRead($TH9txtNumLava) >= 100 Then
						$9Lava = "|" & GUICtrlRead($TH9txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumLava) >= 0 Then
			$10Lava = "|" & GUICtrlRead($TH10txtNumLava) & "          "
			If GUICtrlRead($TH10txtNumLava) >= 10 Then
				$10Lava = "|" & GUICtrlRead($TH10txtNumLava) & "         "
					If GUICtrlRead($TH10txtNumLava) >= 100 Then
						$10Lava = "|" & GUICtrlRead($TH10txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumLava) >= 0 Then
			$11Lava = "|" & GUICtrlRead($TH11txtNumLava) & "          "
			If GUICtrlRead($TH11txtNumLava) >= 10 Then
				$11Lava = "|" & GUICtrlRead($TH11txtNumLava) & "         "
					If GUICtrlRead($TH11txtNumLava) >= 100 Then
						$11Lava = "|" & GUICtrlRead($TH11txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumLava) >= 0 Then
			$12Lava = "|" & GUICtrlRead($TH12txtNumLava) & "          "
			If GUICtrlRead($TH12txtNumLava) >= 10 Then
				$12Lava = "|" & GUICtrlRead($TH12txtNumLava) & "         "
					If GUICtrlRead($TH12txtNumLava) >= 100 Then
						$12Lava = "|" & GUICtrlRead($TH12txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumLava) >= 0 Then
			$13Lava = "|" & GUICtrlRead($TH13txtNumLava) & "          "
			If GUICtrlRead($TH13txtNumLava) >= 10 Then
				$13Lava = "|" & GUICtrlRead($TH13txtNumLava) & "         "
					If GUICtrlRead($TH13txtNumLava) >= 100 Then
						$13Lava = "|" & GUICtrlRead($TH13txtNumLava) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainLava = "TRAIN |Lava       " & $6Lava & $7Lava & $8Lava & $9Lava & $10Lava & $11Lava & $12Lava & $13Lava &"|" & @CRLF
	EndIf

;Bowler

	If GUICtrlRead($TH6txtNumBowler) > 0 Or GUICtrlRead($TH7txtNumBowler) > 0 Or GUICtrlRead($TH8txtNumBowler) > 0 Or GUICtrlRead($TH9txtNumBowler) > 0 Or GUICtrlRead($TH10txtNumBowler) > 0 Or GUICtrlRead($TH11txtNumBowler) > 0 Or GUICtrlRead($TH12txtNumBowler) > 0  Or GUICtrlRead($TH13txtNumBowler) > 0 Then
		If GUICtrlRead($TH6txtNumBowler) >= 0 Then
			$6Bowler = "|" & GUICtrlRead($TH6txtNumBowler) & "          "
			If GUICtrlRead($TH6txtNumBowler) >= 10 Then
				$6Bowler = "|" & GUICtrlRead($TH6txtNumBowler) & "         "
					If GUICtrlRead($TH6txtNumBowler) >= 100 Then
						$6Bowler = "|" & GUICtrlRead($TH6txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBowler) >= 0 Then
			$7Bowler = "|" & GUICtrlRead($TH7txtNumBowler) & "          "
			If GUICtrlRead($TH7txtNumBowler) >= 10 Then
				$7Bowler = "|" & GUICtrlRead($TH7txtNumBowler) & "         "
					If GUICtrlRead($TH7txtNumBowler) >= 100 Then
						$7Bowler = "|" & GUICtrlRead($TH7txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBowler) >= 0 Then
			$8Bowler = "|" & GUICtrlRead($TH8txtNumBowler) & "          "
			If GUICtrlRead($TH8txtNumBowler) >= 10 Then
				$8Bowler = "|" & GUICtrlRead($TH8txtNumBowler) & "         "
					If GUICtrlRead($TH8txtNumBowler) >= 100 Then
						$8Bowler = "|" & GUICtrlRead($TH8txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBowler) >= 0 Then
			$9Bowler = "|" & GUICtrlRead($TH9txtNumBowler) & "          "
			If GUICtrlRead($TH9txtNumBowler) >= 10 Then
				$9Bowler = "|" & GUICtrlRead($TH9txtNumBowler) & "         "
					If GUICtrlRead($TH9txtNumBowler) >= 100 Then
						$9Bowler = "|" & GUICtrlRead($TH9txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBowler) >= 0 Then
			$10Bowler = "|" & GUICtrlRead($TH10txtNumBowler) & "          "
			If GUICtrlRead($TH10txtNumBowler) >= 10 Then
				$10Bowler = "|" & GUICtrlRead($TH10txtNumBowler) & "         "
					If GUICtrlRead($TH10txtNumBowler) >= 100 Then
						$10Bowler = "|" & GUICtrlRead($TH10txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBowler) >= 0 Then
			$11Bowler = "|" & GUICtrlRead($TH11txtNumBowler) & "          "
			If GUICtrlRead($TH11txtNumBowler) >= 10 Then
				$11Bowler = "|" & GUICtrlRead($TH11txtNumBowler) & "         "
					If GUICtrlRead($TH11txtNumBowler) >= 100 Then
						$11Bowler = "|" & GUICtrlRead($TH11txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBowler) >= 0 Then
			$12Bowler = "|" & GUICtrlRead($TH12txtNumBowler) & "          "
			If GUICtrlRead($TH12txtNumBowler) >= 10 Then
				$12Bowler = "|" & GUICtrlRead($TH12txtNumBowler) & "         "
					If GUICtrlRead($TH12txtNumBowler) >= 100 Then
						$12Bowler = "|" & GUICtrlRead($TH12txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBowler) >= 0 Then
			$13Bowler = "|" & GUICtrlRead($TH13txtNumBowler) & "          "
			If GUICtrlRead($TH13txtNumBowler) >= 10 Then
				$13Bowler = "|" & GUICtrlRead($TH13txtNumBowler) & "         "
					If GUICtrlRead($TH13txtNumBowler) >= 100 Then
						$13Bowler = "|" & GUICtrlRead($TH13txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBowler = "TRAIN |Bowl       " & $6Bowler & $7Bowler & $8Bowler & $9Bowler & $10Bowler & $11Bowler & $12Bowler & $13Bowler &"|" & @CRLF
	EndIf
;IceGolem

	If GUICtrlRead($TH6txtNumIceGolem) > 0 Or GUICtrlRead($TH7txtNumIceGolem) > 0 Or GUICtrlRead($TH8txtNumIceGolem) > 0 Or GUICtrlRead($TH9txtNumIceGolem) > 0 Or GUICtrlRead($TH10txtNumIceGolem) > 0 Or GUICtrlRead($TH11txtNumIceGolem) > 0 Or GUICtrlRead($TH12txtNumIceGolem) > 0  Or GUICtrlRead($TH13txtNumIceGolem) > 0 Then
		If GUICtrlRead($TH6txtNumIceGolem) >= 0 Then
			$6IceGolem = "|" & GUICtrlRead($TH6txtNumIceGolem) & "          "
			If GUICtrlRead($TH6txtNumIceGolem) >= 10 Then
				$6IceGolem = "|" & GUICtrlRead($TH6txtNumIceGolem) & "         "
					If GUICtrlRead($TH6txtNumIceGolem) >= 100 Then
						$6IceGolem = "|" & GUICtrlRead($TH6txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumIceGolem) >= 0 Then
			$7IceGolem = "|" & GUICtrlRead($TH7txtNumIceGolem) & "          "
			If GUICtrlRead($TH7txtNumIceGolem) >= 10 Then
				$7IceGolem = "|" & GUICtrlRead($TH7txtNumIceGolem) & "         "
					If GUICtrlRead($TH7txtNumIceGolem) >= 100 Then
						$7IceGolem = "|" & GUICtrlRead($TH7txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumIceGolem) >= 0 Then
			$8IceGolem = "|" & GUICtrlRead($TH8txtNumIceGolem) & "          "
			If GUICtrlRead($TH8txtNumIceGolem) >= 10 Then
				$8IceGolem = "|" & GUICtrlRead($TH8txtNumIceGolem) & "         "
					If GUICtrlRead($TH8txtNumIceGolem) >= 100 Then
						$8IceGolem = "|" & GUICtrlRead($TH8txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumIceGolem) >= 0 Then
			$9IceGolem = "|" & GUICtrlRead($TH9txtNumIceGolem) & "          "
			If GUICtrlRead($TH9txtNumIceGolem) >= 10 Then
				$9IceGolem = "|" & GUICtrlRead($TH9txtNumIceGolem) & "         "
					If GUICtrlRead($TH9txtNumIceGolem) >= 100 Then
						$9IceGolem = "|" & GUICtrlRead($TH9txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumIceGolem) >= 0 Then
			$10IceGolem = "|" & GUICtrlRead($TH10txtNumIceGolem) & "          "
			If GUICtrlRead($TH10txtNumIceGolem) >= 10 Then
				$10IceGolem = "|" & GUICtrlRead($TH10txtNumIceGolem) & "         "
					If GUICtrlRead($TH10txtNumIceGolem) >= 100 Then
						$10IceGolem = "|" & GUICtrlRead($TH10txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumIceGolem) >= 0 Then
			$11IceGolem = "|" & GUICtrlRead($TH11txtNumIceGolem) & "          "
			If GUICtrlRead($TH11txtNumIceGolem) >= 10 Then
				$11IceGolem = "|" & GUICtrlRead($TH11txtNumIceGolem) & "         "
					If GUICtrlRead($TH11txtNumIceGolem) >= 100 Then
						$11IceGolem = "|" & GUICtrlRead($TH11txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumIceGolem) >= 0 Then
			$12IceGolem = "|" & GUICtrlRead($TH12txtNumIceGolem) & "          "
			If GUICtrlRead($TH12txtNumIceGolem) >= 10 Then
				$12IceGolem = "|" & GUICtrlRead($TH12txtNumIceGolem) & "         "
					If GUICtrlRead($TH12txtNumIceGolem) >= 100 Then
						$12IceGolem = "|" & GUICtrlRead($TH12txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumIceGolem) >= 0 Then
			$13IceGolem = "|" & GUICtrlRead($TH13txtNumIceGolem) & "          "
			If GUICtrlRead($TH13txtNumIceGolem) >= 10 Then
				$13IceGolem = "|" & GUICtrlRead($TH13txtNumIceGolem) & "         "
					If GUICtrlRead($TH13txtNumIceGolem) >= 100 Then
						$13IceGolem = "|" & GUICtrlRead($TH13txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainIceGolem = "TRAIN |IceG       " & $6IceGolem & $7IceGolem & $8IceGolem & $9IceGolem & $10IceGolem & $11IceGolem & $12IceGolem & $13IceGolem &"|" & @CRLF
	EndIf
;Light Spell

	If GUICtrlRead($TH6txtNumLspell) > 0 Or GUICtrlRead($TH7txtNumLspell) > 0 Or GUICtrlRead($TH8txtNumLspell) > 0 Or GUICtrlRead($TH9txtNumLspell) > 0 Or GUICtrlRead($TH10txtNumLspell) > 0 Or GUICtrlRead($TH11txtNumLspell) > 0 Or GUICtrlRead($TH12txtNumLspell) > 0  Or GUICtrlRead($TH13txtNumLspell) > 0 Then
		If GUICtrlRead($TH6txtNumLspell) >= 0 Then
			$6Lspell = "|" & GUICtrlRead($TH6txtNumLspell) & "          "
			If GUICtrlRead($TH6txtNumLspell) >= 10 Then
				$6Lspell = "|" & GUICtrlRead($TH6txtNumLspell) & "         "
					If GUICtrlRead($TH6txtNumLspell) >= 100 Then
						$6Lspell = "|" & GUICtrlRead($TH6txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumLspell) >= 0 Then
			$7Lspell = "|" & GUICtrlRead($TH7txtNumLspell) & "          "
			If GUICtrlRead($TH7txtNumLspell) >= 10 Then
				$7Lspell = "|" & GUICtrlRead($TH7txtNumLspell) & "         "
					If GUICtrlRead($TH7txtNumLspell) >= 100 Then
						$7Lspell = "|" & GUICtrlRead($TH7txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumLspell) >= 0 Then
			$8Lspell = "|" & GUICtrlRead($TH8txtNumLspell) & "          "
			If GUICtrlRead($TH8txtNumLspell) >= 10 Then
				$8Lspell = "|" & GUICtrlRead($TH8txtNumLspell) & "         "
					If GUICtrlRead($TH8txtNumLspell) >= 100 Then
						$8Lspell = "|" & GUICtrlRead($TH8txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumLspell) >= 0 Then
			$9Lspell = "|" & GUICtrlRead($TH9txtNumLspell) & "          "
			If GUICtrlRead($TH9txtNumLspell) >= 10 Then
				$9Lspell = "|" & GUICtrlRead($TH9txtNumLspell) & "         "
					If GUICtrlRead($TH9txtNumLspell) >= 100 Then
						$9Lspell = "|" & GUICtrlRead($TH9txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumLspell) >= 0 Then
			$10Lspell = "|" & GUICtrlRead($TH10txtNumLspell) & "          "
			If GUICtrlRead($TH10txtNumLspell) >= 10 Then
				$10Lspell = "|" & GUICtrlRead($TH10txtNumLspell) & "         "
					If GUICtrlRead($TH10txtNumLspell) >= 100 Then
						$10Lspell = "|" & GUICtrlRead($TH10txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumLspell) >= 0 Then
			$11Lspell = "|" & GUICtrlRead($TH11txtNumLspell) & "          "
			If GUICtrlRead($TH11txtNumLspell) >= 10 Then
				$11Lspell = "|" & GUICtrlRead($TH11txtNumLspell) & "         "
					If GUICtrlRead($TH11txtNumLspell) >= 100 Then
						$11Lspell = "|" & GUICtrlRead($TH11txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumLspell) >= 0 Then
			$12Lspell = "|" & GUICtrlRead($TH12txtNumLspell) & "          "
			If GUICtrlRead($TH12txtNumLspell) >= 10 Then
				$12Lspell = "|" & GUICtrlRead($TH12txtNumLspell) & "         "
					If GUICtrlRead($TH12txtNumLspell) >= 100 Then
						$12Lspell = "|" & GUICtrlRead($TH12txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumLspell) >= 0 Then
			$13Lspell = "|" & GUICtrlRead($TH13txtNumLspell) & "          "
			If GUICtrlRead($TH13txtNumLspell) >= 10 Then
				$13Lspell = "|" & GUICtrlRead($TH13txtNumLspell) & "         "
					If GUICtrlRead($TH13txtNumLspell) >= 100 Then
						$13Lspell = "|" & GUICtrlRead($TH13txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainLSpell = "TRAIN |LSpell     " & $6LSpell & $7LSpell & $8LSpell & $9LSpell & $10LSpell & $11LSpell & $12LSpell & $13LSpell &"|" & @CRLF
	EndIf

;Heal Spell

	If GUICtrlRead($TH6txtNumHSpell) > 0 Or GUICtrlRead($TH7txtNumHSpell) > 0 Or GUICtrlRead($TH8txtNumHSpell) > 0 Or GUICtrlRead($TH9txtNumHSpell) > 0 Or GUICtrlRead($TH10txtNumHSpell) > 0 Or GUICtrlRead($TH11txtNumHSpell) > 0 Or GUICtrlRead($TH12txtNumHSpell) > 0 Or GUICtrlRead($TH13txtNumHSpell) > 0 Then
		If GUICtrlRead($TH6txtNumHSpell) >= 0 Then
			$6HSpell = "|" & GUICtrlRead($TH6txtNumHSpell) & "          "
			If GUICtrlRead($TH6txtNumHSpell) >= 10 Then
				$6HSpell = "|" & GUICtrlRead($TH6txtNumHSpell) & "         "
					If GUICtrlRead($TH6txtNumHSpell) >= 100 Then
						$6HSpell = "|" & GUICtrlRead($TH6txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHSpell) >= 0 Then
			$7HSpell = "|" & GUICtrlRead($TH7txtNumHSpell) & "          "
			If GUICtrlRead($TH7txtNumHSpell) >= 10 Then
				$7HSpell = "|" & GUICtrlRead($TH7txtNumHSpell) & "         "
					If GUICtrlRead($TH7txtNumHSpell) >= 100 Then
						$7HSpell = "|" & GUICtrlRead($TH7txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHSpell) >= 0 Then
			$8HSpell = "|" & GUICtrlRead($TH8txtNumHSpell) & "          "
			If GUICtrlRead($TH8txtNumHSpell) >= 10 Then
				$8HSpell = "|" & GUICtrlRead($TH8txtNumHSpell) & "         "
					If GUICtrlRead($TH8txtNumHSpell) >= 100 Then
						$8HSpell = "|" & GUICtrlRead($TH8txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHSpell) >= 0 Then
			$9HSpell = "|" & GUICtrlRead($TH9txtNumHSpell) & "          "
			If GUICtrlRead($TH9txtNumHSpell) >= 10 Then
				$9HSpell = "|" & GUICtrlRead($TH9txtNumHSpell) & "         "
					If GUICtrlRead($TH9txtNumHSpell) >= 100 Then
						$9HSpell = "|" & GUICtrlRead($TH9txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHSpell) >= 0 Then
			$10HSpell = "|" & GUICtrlRead($TH10txtNumHSpell) & "          "
			If GUICtrlRead($TH10txtNumHSpell) >= 10 Then
				$10HSpell = "|" & GUICtrlRead($TH10txtNumHSpell) & "         "
					If GUICtrlRead($TH10txtNumHSpell) >= 100 Then
						$10HSpell = "|" & GUICtrlRead($TH10txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHSpell) >= 0 Then
			$11HSpell = "|" & GUICtrlRead($TH11txtNumHSpell) & "          "
			If GUICtrlRead($TH11txtNumHSpell) >= 10 Then
				$11HSpell = "|" & GUICtrlRead($TH11txtNumHSpell) & "         "
					If GUICtrlRead($TH11txtNumHSpell) >= 100 Then
						$11HSpell = "|" & GUICtrlRead($TH11txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHSpell) >= 0 Then
			$12HSpell = "|" & GUICtrlRead($TH12txtNumHSpell) & "          "
			If GUICtrlRead($TH12txtNumHSpell) >= 10 Then
				$12HSpell = "|" & GUICtrlRead($TH12txtNumHSpell) & "         "
					If GUICtrlRead($TH12txtNumHSpell) >= 100 Then
						$12HSpell = "|" & GUICtrlRead($TH12txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHSpell) >= 0 Then
			$13HSpell = "|" & GUICtrlRead($TH13txtNumHSpell) & "          "
			If GUICtrlRead($TH13txtNumHSpell) >= 10 Then
				$13HSpell = "|" & GUICtrlRead($TH13txtNumHSpell) & "         "
					If GUICtrlRead($TH13txtNumHSpell) >= 100 Then
						$13HSpell = "|" & GUICtrlRead($TH13txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHSpell = "TRAIN |HSpell     " & $6HSpell & $7HSpell & $8HSpell & $9HSpell & $10HSpell & $11HSpell & $12HSpell & $13HSpell &"|" & @CRLF
	EndIf



;Rage Spell

	If GUICtrlRead($TH6txtNumRSpell) > 0 Or GUICtrlRead($TH7txtNumRSpell) > 0 Or GUICtrlRead($TH8txtNumRSpell) > 0 Or GUICtrlRead($TH9txtNumRSpell) > 0 Or GUICtrlRead($TH10txtNumRSpell) > 0 Or GUICtrlRead($TH11txtNumRSpell) > 0 Or GUICtrlRead($TH12txtNumRSpell) > 0 Or GUICtrlRead($TH13txtNumRSpell) > 0 Then
		If GUICtrlRead($TH6txtNumRSpell) >= 0 Then
			$6RSpell = "|" & GUICtrlRead($TH6txtNumRSpell) & "          "
			If GUICtrlRead($TH6txtNumRSpell) >= 10 Then
				$6RSpell = "|" & GUICtrlRead($TH6txtNumRSpell) & "         "
					If GUICtrlRead($TH6txtNumRSpell) >= 100 Then
						$6RSpell = "|" & GUICtrlRead($TH6txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumRSpell) >= 0 Then
			$7RSpell = "|" & GUICtrlRead($TH7txtNumRSpell) & "          "
			If GUICtrlRead($TH7txtNumRSpell) >= 10 Then
				$7RSpell = "|" & GUICtrlRead($TH7txtNumRSpell) & "         "
					If GUICtrlRead($TH7txtNumRSpell) >= 100 Then
						$7RSpell = "|" & GUICtrlRead($TH7txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumRSpell) >= 0 Then
			$8RSpell = "|" & GUICtrlRead($TH8txtNumRSpell) & "          "
			If GUICtrlRead($TH8txtNumRSpell) >= 10 Then
				$8RSpell = "|" & GUICtrlRead($TH8txtNumRSpell) & "         "
					If GUICtrlRead($TH8txtNumRSpell) >= 100 Then
						$8RSpell = "|" & GUICtrlRead($TH8txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumRSpell) >= 0 Then
			$9RSpell = "|" & GUICtrlRead($TH9txtNumRSpell) & "          "
			If GUICtrlRead($TH9txtNumRSpell) >= 10 Then
				$9RSpell = "|" & GUICtrlRead($TH9txtNumRSpell) & "         "
					If GUICtrlRead($TH9txtNumRSpell) >= 100 Then
						$9RSpell = "|" & GUICtrlRead($TH9txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumRSpell) >= 0 Then
			$10RSpell = "|" & GUICtrlRead($TH10txtNumRSpell) & "          "
			If GUICtrlRead($TH10txtNumRSpell) >= 10 Then
				$10RSpell = "|" & GUICtrlRead($TH10txtNumRSpell) & "         "
					If GUICtrlRead($TH10txtNumRSpell) >= 100 Then
						$10RSpell = "|" & GUICtrlRead($TH10txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumRSpell) >= 0 Then
			$11RSpell = "|" & GUICtrlRead($TH11txtNumRSpell) & "          "
			If GUICtrlRead($TH11txtNumRSpell) >= 10 Then
				$11RSpell = "|" & GUICtrlRead($TH11txtNumRSpell) & "         "
					If GUICtrlRead($TH11txtNumRSpell) >= 100 Then
						$11RSpell = "|" & GUICtrlRead($TH11txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumRSpell) >= 0 Then
			$12RSpell = "|" & GUICtrlRead($TH12txtNumRSpell) & "          "
			If GUICtrlRead($TH12txtNumRSpell) >= 10 Then
				$12RSpell = "|" & GUICtrlRead($TH12txtNumRSpell) & "         "
					If GUICtrlRead($TH12txtNumRSpell) >= 100 Then
						$12RSpell = "|" & GUICtrlRead($TH12txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumRSpell) >= 0 Then
			$13RSpell = "|" & GUICtrlRead($TH13txtNumRSpell) & "          "
			If GUICtrlRead($TH13txtNumRSpell) >= 10 Then
				$13RSpell = "|" & GUICtrlRead($TH13txtNumRSpell) & "         "
					If GUICtrlRead($TH13txtNumRSpell) >= 100 Then
						$13RSpell = "|" & GUICtrlRead($TH13txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainRSpell = "TRAIN |RSpell     " & $6RSpell & $7RSpell & $8RSpell & $9RSpell & $10RSpell & $11RSpell & $12RSpell & $13RSpell &"|" & @CRLF
	EndIf

;Jump Spell

	If GUICtrlRead($TH6txtNumJSpell) > 0 Or GUICtrlRead($TH7txtNumJSpell) > 0 Or GUICtrlRead($TH8txtNumJSpell) > 0 Or GUICtrlRead($TH9txtNumJSpell) > 0 Or GUICtrlRead($TH10txtNumJSpell) > 0 Or GUICtrlRead($TH11txtNumJSpell) > 0 Or GUICtrlRead($TH12txtNumJSpell) > 0  Or GUICtrlRead($TH13txtNumJSpell) > 0 Then
		If GUICtrlRead($TH6txtNumJSpell) >= 0 Then
			$6JSpell = "|" & GUICtrlRead($TH6txtNumJSpell) & "          "
			If GUICtrlRead($TH6txtNumJSpell) >= 10 Then
				$6JSpell = "|" & GUICtrlRead($TH6txtNumJSpell) & "         "
					If GUICtrlRead($TH6txtNumJSpell) >= 100 Then
						$6JSpell = "|" & GUICtrlRead($TH6txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumJSpell) >= 0 Then
			$7JSpell = "|" & GUICtrlRead($TH7txtNumJSpell) & "          "
			If GUICtrlRead($TH7txtNumJSpell) >= 10 Then
				$7JSpell = "|" & GUICtrlRead($TH7txtNumJSpell) & "         "
					If GUICtrlRead($TH7txtNumJSpell) >= 100 Then
						$7JSpell = "|" & GUICtrlRead($TH7txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumJSpell) >= 0 Then
			$8JSpell = "|" & GUICtrlRead($TH8txtNumJSpell) & "          "
			If GUICtrlRead($TH8txtNumJSpell) >= 10 Then
				$8JSpell = "|" & GUICtrlRead($TH8txtNumJSpell) & "         "
					If GUICtrlRead($TH8txtNumJSpell) >= 100 Then
						$8JSpell = "|" & GUICtrlRead($TH8txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumJSpell) >= 0 Then
			$9JSpell = "|" & GUICtrlRead($TH9txtNumJSpell) & "          "
			If GUICtrlRead($TH9txtNumJSpell) >= 10 Then
				$9JSpell = "|" & GUICtrlRead($TH9txtNumJSpell) & "         "
					If GUICtrlRead($TH9txtNumJSpell) >= 100 Then
						$9JSpell = "|" & GUICtrlRead($TH9txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumJSpell) >= 0 Then
			$10JSpell = "|" & GUICtrlRead($TH10txtNumJSpell) & "          "
			If GUICtrlRead($TH10txtNumJSpell) >= 10 Then
				$10JSpell = "|" & GUICtrlRead($TH10txtNumJSpell) & "         "
					If GUICtrlRead($TH10txtNumJSpell) >= 100 Then
						$10JSpell = "|" & GUICtrlRead($TH10txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumJSpell) >= 0 Then
			$11JSpell = "|" & GUICtrlRead($TH11txtNumJSpell) & "          "
			If GUICtrlRead($TH11txtNumJSpell) >= 10 Then
				$11JSpell = "|" & GUICtrlRead($TH11txtNumJSpell) & "         "
					If GUICtrlRead($TH11txtNumJSpell) >= 100 Then
						$11JSpell = "|" & GUICtrlRead($TH11txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumJSpell) >= 0 Then
			$12JSpell = "|" & GUICtrlRead($TH12txtNumJSpell) & "          "
			If GUICtrlRead($TH12txtNumJSpell) >= 10 Then
				$12JSpell = "|" & GUICtrlRead($TH12txtNumJSpell) & "         "
					If GUICtrlRead($TH12txtNumJSpell) >= 100 Then
						$12JSpell = "|" & GUICtrlRead($TH12txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumJSpell) >= 0 Then
			$13JSpell = "|" & GUICtrlRead($TH13txtNumJSpell) & "          "
			If GUICtrlRead($TH13txtNumJSpell) >= 10 Then
				$13JSpell = "|" & GUICtrlRead($TH13txtNumJSpell) & "         "
					If GUICtrlRead($TH13txtNumJSpell) >= 100 Then
						$13JSpell = "|" & GUICtrlRead($TH13txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainJSpell = "TRAIN |JSpell     " & $6JSpell & $7JSpell & $8JSpell & $9JSpell & $10JSpell & $11JSpell & $12JSpell & $13JSpell &"|" & @CRLF
	EndIf



;Freeze Spell

	If GUICtrlRead($TH6txtNumFSpell) > 0 Or GUICtrlRead($TH7txtNumFSpell) > 0 Or GUICtrlRead($TH8txtNumFSpell) > 0 Or GUICtrlRead($TH9txtNumFSpell) > 0 Or GUICtrlRead($TH10txtNumFSpell) > 0 Or GUICtrlRead($TH11txtNumFSpell) > 0 Or GUICtrlRead($TH12txtNumFSpell) > 0  Or GUICtrlRead($TH13txtNumFSpell) > 0 Then
		If GUICtrlRead($TH6txtNumFSpell) >= 0 Then
			$6FSpell = "|" & GUICtrlRead($TH6txtNumFSpell) & "          "
			If GUICtrlRead($TH6txtNumFSpell) >= 10 Then
				$6FSpell = "|" & GUICtrlRead($TH6txtNumFSpell) & "         "
					If GUICtrlRead($TH6txtNumFSpell) >= 100 Then
						$6FSpell = "|" & GUICtrlRead($TH6txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumFSpell) >= 0 Then
			$7FSpell = "|" & GUICtrlRead($TH7txtNumFSpell) & "          "
			If GUICtrlRead($TH7txtNumFSpell) >= 10 Then
				$7FSpell = "|" & GUICtrlRead($TH7txtNumFSpell) & "         "
					If GUICtrlRead($TH7txtNumFSpell) >= 100 Then
						$7FSpell = "|" & GUICtrlRead($TH7txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumFSpell) >= 0 Then
			$8FSpell = "|" & GUICtrlRead($TH8txtNumFSpell) & "          "
			If GUICtrlRead($TH8txtNumFSpell) >= 10 Then
				$8FSpell = "|" & GUICtrlRead($TH8txtNumFSpell) & "         "
					If GUICtrlRead($TH8txtNumFSpell) >= 100 Then
						$8FSpell = "|" & GUICtrlRead($TH8txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumFSpell) >= 0 Then
			$9FSpell = "|" & GUICtrlRead($TH9txtNumFSpell) & "          "
			If GUICtrlRead($TH9txtNumFSpell) >= 10 Then
				$9FSpell = "|" & GUICtrlRead($TH9txtNumFSpell) & "         "
					If GUICtrlRead($TH9txtNumFSpell) >= 100 Then
						$9FSpell = "|" & GUICtrlRead($TH9txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumFSpell) >= 0 Then
			$10FSpell = "|" & GUICtrlRead($TH10txtNumFSpell) & "          "
			If GUICtrlRead($TH10txtNumFSpell) >= 10 Then
				$10FSpell = "|" & GUICtrlRead($TH10txtNumFSpell) & "         "
					If GUICtrlRead($TH10txtNumFSpell) >= 100 Then
						$10FSpell = "|" & GUICtrlRead($TH10txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumFSpell) >= 0 Then
			$11FSpell = "|" & GUICtrlRead($TH11txtNumFSpell) & "          "
			If GUICtrlRead($TH11txtNumFSpell) >= 10 Then
				$11FSpell = "|" & GUICtrlRead($TH11txtNumFSpell) & "         "
					If GUICtrlRead($TH11txtNumFSpell) >= 100 Then
						$11FSpell = "|" & GUICtrlRead($TH11txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumFSpell) >= 0 Then
			$12FSpell = "|" & GUICtrlRead($TH12txtNumFSpell) & "          "
			If GUICtrlRead($TH12txtNumFSpell) >= 10 Then
				$12FSpell = "|" & GUICtrlRead($TH12txtNumFSpell) & "         "
					If GUICtrlRead($TH12txtNumFSpell) >= 100 Then
						$12FSpell = "|" & GUICtrlRead($TH12txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumFSpell) >= 0 Then
			$13FSpell = "|" & GUICtrlRead($TH13txtNumFSpell) & "          "
			If GUICtrlRead($TH13txtNumFSpell) >= 10 Then
				$13FSpell = "|" & GUICtrlRead($TH13txtNumFSpell) & "         "
					If GUICtrlRead($TH13txtNumFSpell) >= 100 Then
						$13FSpell = "|" & GUICtrlRead($TH13txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainFSpell = "TRAIN |FSpell     " & $6FSpell & $7FSpell & $8FSpell & $9FSpell & $10FSpell & $11FSpell & $12FSpell & $13FSpell &"|" & @CRLF
	EndIf



;Poison Spell

	If GUICtrlRead($TH6txtNumPSpell) > 0 Or GUICtrlRead($TH7txtNumPSpell) > 0 Or GUICtrlRead($TH8txtNumPSpell) > 0 Or GUICtrlRead($TH9txtNumPSpell) > 0 Or GUICtrlRead($TH10txtNumPSpell) > 0 Or GUICtrlRead($TH11txtNumPSpell) > 0 Or GUICtrlRead($TH12txtNumPSpell) > 0  Or GUICtrlRead($TH13txtNumPSpell) > 0 Then
		If GUICtrlRead($TH6txtNumPSpell) >= 0 Then
			$6PSpell = "|" & GUICtrlRead($TH6txtNumPSpell) & "          "
			If GUICtrlRead($TH6txtNumPSpell) >= 10 Then
				$6PSpell = "|" & GUICtrlRead($TH6txtNumPSpell) & "         "
					If GUICtrlRead($TH6txtNumPSpell) >= 100 Then
						$6PSpell = "|" & GUICtrlRead($TH6txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumPSpell) >= 0 Then
			$7PSpell = "|" & GUICtrlRead($TH7txtNumPSpell) & "          "
			If GUICtrlRead($TH7txtNumPSpell) >= 10 Then
				$7PSpell = "|" & GUICtrlRead($TH7txtNumPSpell) & "         "
					If GUICtrlRead($TH7txtNumPSpell) >= 100 Then
						$7PSpell = "|" & GUICtrlRead($TH7txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumPSpell) >= 0 Then
			$8PSpell = "|" & GUICtrlRead($TH8txtNumPSpell) & "          "
			If GUICtrlRead($TH8txtNumPSpell) >= 10 Then
				$8PSpell = "|" & GUICtrlRead($TH8txtNumPSpell) & "         "
					If GUICtrlRead($TH8txtNumPSpell) >= 100 Then
						$8PSpell = "|" & GUICtrlRead($TH8txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumPSpell) >= 0 Then
			$9PSpell = "|" & GUICtrlRead($TH9txtNumPSpell) & "          "
			If GUICtrlRead($TH9txtNumPSpell) >= 10 Then
				$9PSpell = "|" & GUICtrlRead($TH9txtNumPSpell) & "         "
					If GUICtrlRead($TH9txtNumPSpell) >= 100 Then
						$9PSpell = "|" & GUICtrlRead($TH9txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumPSpell) >= 0 Then
			$10PSpell = "|" & GUICtrlRead($TH10txtNumPSpell) & "          "
			If GUICtrlRead($TH10txtNumPSpell) >= 10 Then
				$10PSpell = "|" & GUICtrlRead($TH10txtNumPSpell) & "         "
					If GUICtrlRead($TH10txtNumPSpell) >= 100 Then
						$10PSpell = "|" & GUICtrlRead($TH10txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumPSpell) >= 0 Then
			$11PSpell = "|" & GUICtrlRead($TH11txtNumPSpell) & "          "
			If GUICtrlRead($TH11txtNumPSpell) >= 10 Then
				$11PSpell = "|" & GUICtrlRead($TH11txtNumPSpell) & "         "
					If GUICtrlRead($TH11txtNumPSpell) >= 100 Then
						$11PSpell = "|" & GUICtrlRead($TH11txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumPSpell) >= 0 Then
			$12PSpell = "|" & GUICtrlRead($TH12txtNumPSpell) & "          "
			If GUICtrlRead($TH12txtNumPSpell) >= 10 Then
				$12PSpell = "|" & GUICtrlRead($TH12txtNumPSpell) & "         "
					If GUICtrlRead($TH12txtNumPSpell) >= 100 Then
						$12PSpell = "|" & GUICtrlRead($TH12txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumPSpell) >= 0 Then
			$13PSpell = "|" & GUICtrlRead($TH13txtNumPSpell) & "          "
			If GUICtrlRead($TH13txtNumPSpell) >= 10 Then
				$13PSpell = "|" & GUICtrlRead($TH13txtNumPSpell) & "         "
					If GUICtrlRead($TH13txtNumPSpell) >= 100 Then
						$13PSpell = "|" & GUICtrlRead($TH13txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainPSpell = "TRAIN |PSpell     " & $6PSpell & $7PSpell & $8PSpell & $9PSpell & $10PSpell & $11PSpell & $12PSpell & $13PSpell &"|" & @CRLF
	EndIf




;Clone Spell

	If GUICtrlRead($TH6txtNumCSpell) > 0 Or GUICtrlRead($TH7txtNumCSpell) > 0 Or GUICtrlRead($TH8txtNumCSpell) > 0 Or GUICtrlRead($TH9txtNumCSpell) > 0 Or GUICtrlRead($TH10txtNumCSpell) > 0 Or GUICtrlRead($TH11txtNumCSpell) > 0 Or GUICtrlRead($TH12txtNumCSpell) > 0  Or GUICtrlRead($TH13txtNumCSpell) > 0 Then
		If GUICtrlRead($TH6txtNumCSpell) >= 0 Then
			$6CSpell = "|" & GUICtrlRead($TH6txtNumCSpell) & "          "
			If GUICtrlRead($TH6txtNumCSpell) >= 10 Then
				$6CSpell = "|" & GUICtrlRead($TH6txtNumCSpell) & "         "
					If GUICtrlRead($TH6txtNumCSpell) >= 100 Then
						$6CSpell = "|" & GUICtrlRead($TH6txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumCSpell) >= 0 Then
			$7CSpell = "|" & GUICtrlRead($TH7txtNumCSpell) & "          "
			If GUICtrlRead($TH7txtNumCSpell) >= 10 Then
				$7CSpell = "|" & GUICtrlRead($TH7txtNumCSpell) & "         "
					If GUICtrlRead($TH7txtNumCSpell) >= 100 Then
						$7CSpell = "|" & GUICtrlRead($TH7txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumCSpell) >= 0 Then
			$8CSpell = "|" & GUICtrlRead($TH8txtNumCSpell) & "          "
			If GUICtrlRead($TH8txtNumCSpell) >= 10 Then
				$8CSpell = "|" & GUICtrlRead($TH8txtNumCSpell) & "         "
					If GUICtrlRead($TH8txtNumCSpell) >= 100 Then
						$8CSpell = "|" & GUICtrlRead($TH8txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumCSpell) >= 0 Then
			$9CSpell = "|" & GUICtrlRead($TH9txtNumCSpell) & "          "
			If GUICtrlRead($TH9txtNumCSpell) >= 10 Then
				$9CSpell = "|" & GUICtrlRead($TH9txtNumCSpell) & "         "
					If GUICtrlRead($TH9txtNumCSpell) >= 100 Then
						$9CSpell = "|" & GUICtrlRead($TH9txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumCSpell) >= 0 Then
			$10CSpell = "|" & GUICtrlRead($TH10txtNumCSpell) & "          "
			If GUICtrlRead($TH10txtNumCSpell) >= 10 Then
				$10CSpell = "|" & GUICtrlRead($TH10txtNumCSpell) & "         "
					If GUICtrlRead($TH10txtNumCSpell) >= 100 Then
						$10CSpell = "|" & GUICtrlRead($TH10txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumCSpell) >= 0 Then
			$11CSpell = "|" & GUICtrlRead($TH11txtNumCSpell) & "          "
			If GUICtrlRead($TH11txtNumCSpell) >= 10 Then
				$11CSpell = "|" & GUICtrlRead($TH11txtNumCSpell) & "         "
					If GUICtrlRead($TH11txtNumCSpell) >= 100 Then
						$11CSpell = "|" & GUICtrlRead($TH11txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumCSpell) >= 0 Then
			$12CSpell = "|" & GUICtrlRead($TH12txtNumCSpell) & "          "
			If GUICtrlRead($TH12txtNumCSpell) >= 10 Then
				$12CSpell = "|" & GUICtrlRead($TH12txtNumCSpell) & "         "
					If GUICtrlRead($TH12txtNumCSpell) >= 100 Then
						$12CSpell = "|" & GUICtrlRead($TH12txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumCSpell) >= 0 Then
			$13CSpell = "|" & GUICtrlRead($TH13txtNumCSpell) & "          "
			If GUICtrlRead($TH13txtNumCSpell) >= 10 Then
				$13CSpell = "|" & GUICtrlRead($TH13txtNumCSpell) & "         "
					If GUICtrlRead($TH13txtNumCSpell) >= 100 Then
						$13CSpell = "|" & GUICtrlRead($TH13txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainCSpell = "TRAIN |CSpell     " & $6CSpell & $7CSpell & $8CSpell & $9CSpell & $10CSpell & $11CSpell & $12CSpell & $13CSpell &"|" & @CRLF
	EndIf

;EarthQuake Spell

	If GUICtrlRead($TH6txtNumESpell) > 0 Or GUICtrlRead($TH7txtNumESpell) > 0 Or GUICtrlRead($TH8txtNumESpell) > 0 Or GUICtrlRead($TH9txtNumESpell) > 0 Or GUICtrlRead($TH10txtNumESpell) > 0 Or GUICtrlRead($TH11txtNumESpell) > 0 Or GUICtrlRead($TH12txtNumESpell) > 0  Or GUICtrlRead($TH13txtNumESpell) > 0 Then
		If GUICtrlRead($TH6txtNumESpell) >= 0 Then
			$6ESpell = "|" & GUICtrlRead($TH6txtNumESpell) & "          "
			If GUICtrlRead($TH6txtNumESpell) >= 10 Then
				$6ESpell = "|" & GUICtrlRead($TH6txtNumESpell) & "         "
					If GUICtrlRead($TH6txtNumESpell) >= 100 Then
						$6ESpell = "|" & GUICtrlRead($TH6txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumESpell) >= 0 Then
			$7ESpell = "|" & GUICtrlRead($TH7txtNumESpell) & "          "
			If GUICtrlRead($TH7txtNumESpell) >= 10 Then
				$7ESpell = "|" & GUICtrlRead($TH7txtNumESpell) & "         "
					If GUICtrlRead($TH7txtNumESpell) >= 100 Then
						$7ESpell = "|" & GUICtrlRead($TH7txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumESpell) >= 0 Then
			$8ESpell = "|" & GUICtrlRead($TH8txtNumESpell) & "          "
			If GUICtrlRead($TH8txtNumESpell) >= 10 Then
				$8ESpell = "|" & GUICtrlRead($TH8txtNumESpell) & "         "
					If GUICtrlRead($TH8txtNumESpell) >= 100 Then
						$8ESpell = "|" & GUICtrlRead($TH8txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumESpell) >= 0 Then
			$9ESpell = "|" & GUICtrlRead($TH9txtNumESpell) & "          "
			If GUICtrlRead($TH9txtNumESpell) >= 10 Then
				$9ESpell = "|" & GUICtrlRead($TH9txtNumESpell) & "         "
					If GUICtrlRead($TH9txtNumESpell) >= 100 Then
						$9ESpell = "|" & GUICtrlRead($TH9txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumESpell) >= 0 Then
			$10ESpell = "|" & GUICtrlRead($TH10txtNumESpell) & "          "
			If GUICtrlRead($TH10txtNumESpell) >= 10 Then
				$10ESpell = "|" & GUICtrlRead($TH10txtNumESpell) & "         "
					If GUICtrlRead($TH10txtNumESpell) >= 100 Then
						$10ESpell = "|" & GUICtrlRead($TH10txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumESpell) >= 0 Then
			$11ESpell = "|" & GUICtrlRead($TH11txtNumESpell) & "          "
			If GUICtrlRead($TH11txtNumESpell) >= 10 Then
				$11ESpell = "|" & GUICtrlRead($TH11txtNumESpell) & "         "
					If GUICtrlRead($TH11txtNumESpell) >= 100 Then
						$11ESpell = "|" & GUICtrlRead($TH11txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumESpell) >= 0 Then
			$12ESpell = "|" & GUICtrlRead($TH12txtNumESpell) & "          "
			If GUICtrlRead($TH12txtNumESpell) >= 10 Then
				$12ESpell = "|" & GUICtrlRead($TH12txtNumESpell) & "         "
					If GUICtrlRead($TH12txtNumESpell) >= 100 Then
						$12ESpell = "|" & GUICtrlRead($TH12txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumESpell) >= 0 Then
			$13ESpell = "|" & GUICtrlRead($TH13txtNumESpell) & "          "
			If GUICtrlRead($TH13txtNumESpell) >= 10 Then
				$13ESpell = "|" & GUICtrlRead($TH13txtNumESpell) & "         "
					If GUICtrlRead($TH13txtNumESpell) >= 100 Then
						$13ESpell = "|" & GUICtrlRead($TH13txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainESpell = "TRAIN |ESpell     " & $6ESpell & $7ESpell & $8ESpell & $9ESpell & $10ESpell & $11ESpell & $12ESpell & $13ESpell &"|" & @CRLF
	EndIf




;Haste Spell

	If GUICtrlRead($TH6txtNumHaSpell) > 0 Or GUICtrlRead($TH7txtNumHaSpell) > 0 Or GUICtrlRead($TH8txtNumHaSpell) > 0 Or GUICtrlRead($TH9txtNumHaSpell) > 0 Or GUICtrlRead($TH10txtNumHaSpell) > 0 Or GUICtrlRead($TH11txtNumHaSpell) > 0 Or GUICtrlRead($TH12txtNumHaSpell) > 0  Or GUICtrlRead($TH13txtNumHaSpell) > 0 Then
		If GUICtrlRead($TH6txtNumHaSpell) >= 0 Then
			$6HaSpell = "|" & GUICtrlRead($TH6txtNumHaSpell) & "          "
			If GUICtrlRead($TH6txtNumHaSpell) >= 10 Then
				$6HaSpell = "|" & GUICtrlRead($TH6txtNumHaSpell) & "         "
					If GUICtrlRead($TH6txtNumHaSpell) >= 100 Then
						$6HaSpell = "|" & GUICtrlRead($TH6txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHaSpell) >= 0 Then
			$7HaSpell = "|" & GUICtrlRead($TH7txtNumHaSpell) & "          "
			If GUICtrlRead($TH7txtNumHaSpell) >= 10 Then
				$7HaSpell = "|" & GUICtrlRead($TH7txtNumHaSpell) & "         "
					If GUICtrlRead($TH7txtNumHaSpell) >= 100 Then
						$7HaSpell = "|" & GUICtrlRead($TH7txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHaSpell) >= 0 Then
			$8HaSpell = "|" & GUICtrlRead($TH8txtNumHaSpell) & "          "
			If GUICtrlRead($TH8txtNumHaSpell) >= 10 Then
				$8HaSpell = "|" & GUICtrlRead($TH8txtNumHaSpell) & "         "
					If GUICtrlRead($TH8txtNumHaSpell) >= 100 Then
						$8HaSpell = "|" & GUICtrlRead($TH8txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHaSpell) >= 0 Then
			$9HaSpell = "|" & GUICtrlRead($TH9txtNumHaSpell) & "          "
			If GUICtrlRead($TH9txtNumHaSpell) >= 10 Then
				$9HaSpell = "|" & GUICtrlRead($TH9txtNumHaSpell) & "         "
					If GUICtrlRead($TH9txtNumHaSpell) >= 100 Then
						$9HaSpell = "|" & GUICtrlRead($TH9txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHaSpell) >= 0 Then
			$10HaSpell = "|" & GUICtrlRead($TH10txtNumHaSpell) & "          "
			If GUICtrlRead($TH10txtNumHaSpell) >= 10 Then
				$10HaSpell = "|" & GUICtrlRead($TH10txtNumHaSpell) & "         "
					If GUICtrlRead($TH10txtNumHaSpell) >= 100 Then
						$10HaSpell = "|" & GUICtrlRead($TH10txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHaSpell) >= 0 Then
			$11HaSpell = "|" & GUICtrlRead($TH11txtNumHaSpell) & "          "
			If GUICtrlRead($TH11txtNumHaSpell) >= 10 Then
				$11HaSpell = "|" & GUICtrlRead($TH11txtNumHaSpell) & "         "
					If GUICtrlRead($TH11txtNumHaSpell) >= 100 Then
						$11HaSpell = "|" & GUICtrlRead($TH11txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHaSpell) >= 0 Then
			$12HaSpell = "|" & GUICtrlRead($TH12txtNumHaSpell) & "          "
			If GUICtrlRead($TH12txtNumHaSpell) >= 10 Then
				$12HaSpell = "|" & GUICtrlRead($TH12txtNumHaSpell) & "         "
					If GUICtrlRead($TH12txtNumHaSpell) >= 100 Then
						$12HaSpell = "|" & GUICtrlRead($TH12txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHaSpell) >= 0 Then
			$13HaSpell = "|" & GUICtrlRead($TH13txtNumHaSpell) & "          "
			If GUICtrlRead($TH13txtNumHaSpell) >= 10 Then
				$13HaSpell = "|" & GUICtrlRead($TH13txtNumHaSpell) & "         "
					If GUICtrlRead($TH13txtNumHaSpell) >= 100 Then
						$13HaSpell = "|" & GUICtrlRead($TH13txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHaSpell = "TRAIN |HaSpell    " & $6HaSpell & $7HaSpell & $8HaSpell & $9HaSpell & $10HaSpell & $11HaSpell & $12HaSpell & $13HaSpell &"|" & @CRLF
	EndIf


;Bat Spell

	If GUICtrlRead($TH6txtNumBaSpell) > 0 Or GUICtrlRead($TH7txtNumBaSpell) > 0 Or GUICtrlRead($TH8txtNumBaSpell) > 0 Or GUICtrlRead($TH9txtNumBaSpell) > 0 Or GUICtrlRead($TH10txtNumBaSpell) > 0 Or GUICtrlRead($TH11txtNumBaSpell) > 0 Or GUICtrlRead($TH12txtNumBaSpell) > 0  Or GUICtrlRead($TH13txtNumBaSpell) > 0 Then
		If GUICtrlRead($TH6txtNumBaSpell) >= 0 Then
			$6BaSpell = "|" & GUICtrlRead($TH6txtNumBaSpell) & "          "
			If GUICtrlRead($TH6txtNumBaSpell) >= 10 Then
				$6BaSpell = "|" & GUICtrlRead($TH6txtNumBaSpell) & "         "
					If GUICtrlRead($TH6txtNumBaSpell) >= 100 Then
						$6BaSpell = "|" & GUICtrlRead($TH6txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBaSpell) >= 0 Then
			$7BaSpell = "|" & GUICtrlRead($TH7txtNumBaSpell) & "          "
			If GUICtrlRead($TH7txtNumBaSpell) >= 10 Then
				$7BaSpell = "|" & GUICtrlRead($TH7txtNumBaSpell) & "         "
					If GUICtrlRead($TH7txtNumBaSpell) >= 100 Then
						$7BaSpell = "|" & GUICtrlRead($TH7txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBaSpell) >= 0 Then
			$8BaSpell = "|" & GUICtrlRead($TH8txtNumBaSpell) & "          "
			If GUICtrlRead($TH8txtNumBaSpell) >= 10 Then
				$8BaSpell = "|" & GUICtrlRead($TH8txtNumBaSpell) & "         "
					If GUICtrlRead($TH8txtNumBaSpell) >= 100 Then
						$8BaSpell = "|" & GUICtrlRead($TH8txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBaSpell) >= 0 Then
			$9BaSpell = "|" & GUICtrlRead($TH9txtNumBaSpell) & "          "
			If GUICtrlRead($TH9txtNumBaSpell) >= 10 Then
				$9BaSpell = "|" & GUICtrlRead($TH9txtNumBaSpell) & "         "
					If GUICtrlRead($TH9txtNumBaSpell) >= 100 Then
						$9BaSpell = "|" & GUICtrlRead($TH9txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBaSpell) >= 0 Then
			$10BaSpell = "|" & GUICtrlRead($TH10txtNumBaSpell) & "          "
			If GUICtrlRead($TH10txtNumBaSpell) >= 10 Then
				$10BaSpell = "|" & GUICtrlRead($TH10txtNumBaSpell) & "         "
					If GUICtrlRead($TH10txtNumBaSpell) >= 100 Then
						$10BaSpell = "|" & GUICtrlRead($TH10txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBaSpell) >= 0 Then
			$11BaSpell = "|" & GUICtrlRead($TH11txtNumBaSpell) & "          "
			If GUICtrlRead($TH11txtNumBaSpell) >= 10 Then
				$11BaSpell = "|" & GUICtrlRead($TH11txtNumBaSpell) & "         "
					If GUICtrlRead($TH11txtNumBaSpell) >= 100 Then
						$11BaSpell = "|" & GUICtrlRead($TH11txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBaSpell) >= 0 Then
			$12BaSpell = "|" & GUICtrlRead($TH12txtNumBaSpell) & "          "
			If GUICtrlRead($TH12txtNumBaSpell) >= 10 Then
				$12BaSpell = "|" & GUICtrlRead($TH12txtNumBaSpell) & "         "
					If GUICtrlRead($TH12txtNumBaSpell) >= 100 Then
						$12BaSpell = "|" & GUICtrlRead($TH12txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBaSpell) >= 0 Then
			$13BaSpell = "|" & GUICtrlRead($TH13txtNumBaSpell) & "          "
			If GUICtrlRead($TH13txtNumBaSpell) >= 10 Then
				$13BaSpell = "|" & GUICtrlRead($TH13txtNumBaSpell) & "         "
					If GUICtrlRead($TH13txtNumBaSpell) >= 100 Then
						$13BaSpell = "|" & GUICtrlRead($TH13txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBaSpell = "TRAIN |BtSpell    " & $6BaSpell & $7BaSpell & $8BaSpell & $9BaSpell & $10BaSpell & $11BaSpell & $12BaSpell & $13BaSpell &"|" & @CRLF
	EndIf



;Skeleton Spell

	If GUICtrlRead($TH6txtNumSkSpell) > 0 Or GUICtrlRead($TH7txtNumSkSpell) > 0 Or GUICtrlRead($TH8txtNumSkSpell) > 0 Or GUICtrlRead($TH9txtNumSkSpell) > 0 Or GUICtrlRead($TH10txtNumSkSpell) > 0 Or GUICtrlRead($TH11txtNumSkSpell) > 0 Or GUICtrlRead($TH12txtNumSkSpell) > 0  Or GUICtrlRead($TH13txtNumSkSpell) > 0 Then
		If GUICtrlRead($TH6txtNumSkSpell) >= 0 Then
			$6SkSpell = "|" & GUICtrlRead($TH6txtNumSkSpell) & "          "
			If GUICtrlRead($TH6txtNumSkSpell) >= 10 Then
				$6SkSpell = "|" & GUICtrlRead($TH6txtNumSkSpell) & "         "
					If GUICtrlRead($TH6txtNumSkSpell) >= 100 Then
						$6SkSpell = "|" & GUICtrlRead($TH6txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumSkSpell) >= 0 Then
			$7SkSpell = "|" & GUICtrlRead($TH7txtNumSkSpell) & "          "
			If GUICtrlRead($TH7txtNumSkSpell) >= 10 Then
				$7SkSpell = "|" & GUICtrlRead($TH7txtNumSkSpell) & "         "
					If GUICtrlRead($TH7txtNumSkSpell) >= 100 Then
						$7SkSpell = "|" & GUICtrlRead($TH7txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumSkSpell) >= 0 Then
			$8SkSpell = "|" & GUICtrlRead($TH8txtNumSkSpell) & "          "
			If GUICtrlRead($TH8txtNumSkSpell) >= 10 Then
				$8SkSpell = "|" & GUICtrlRead($TH8txtNumSkSpell) & "         "
					If GUICtrlRead($TH8txtNumSkSpell) >= 100 Then
						$8SkSpell = "|" & GUICtrlRead($TH8txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumSkSpell) >= 0 Then
			$9SkSpell = "|" & GUICtrlRead($TH9txtNumSkSpell) & "          "
			If GUICtrlRead($TH9txtNumSkSpell) >= 10 Then
				$9SkSpell = "|" & GUICtrlRead($TH9txtNumSkSpell) & "         "
					If GUICtrlRead($TH9txtNumSkSpell) >= 100 Then
						$9SkSpell = "|" & GUICtrlRead($TH9txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumSkSpell) >= 0 Then
			$10SkSpell = "|" & GUICtrlRead($TH10txtNumSkSpell) & "          "
			If GUICtrlRead($TH10txtNumSkSpell) >= 10 Then
				$10SkSpell = "|" & GUICtrlRead($TH10txtNumSkSpell) & "         "
					If GUICtrlRead($TH10txtNumSkSpell) >= 100 Then
						$10SkSpell = "|" & GUICtrlRead($TH10txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumSkSpell) >= 0 Then
			$11SkSpell = "|" & GUICtrlRead($TH11txtNumSkSpell) & "          "
			If GUICtrlRead($TH11txtNumSkSpell) >= 10 Then
				$11SkSpell = "|" & GUICtrlRead($TH11txtNumSkSpell) & "         "
					If GUICtrlRead($TH11txtNumSkSpell) >= 100 Then
						$11SkSpell = "|" & GUICtrlRead($TH11txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumSkSpell) >= 0 Then
			$12SkSpell = "|" & GUICtrlRead($TH12txtNumSkSpell) & "          "
			If GUICtrlRead($TH12txtNumSkSpell) >= 10 Then
				$12SkSpell = "|" & GUICtrlRead($TH12txtNumSkSpell) & "         "
					If GUICtrlRead($TH12txtNumSkSpell) >= 100 Then
						$12SkSpell = "|" & GUICtrlRead($TH12txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumSkSpell) >= 0 Then
			$13SkSpell = "|" & GUICtrlRead($TH13txtNumSkSpell) & "          "
			If GUICtrlRead($TH13txtNumSkSpell) >= 10 Then
				$13SkSpell = "|" & GUICtrlRead($TH13txtNumSkSpell) & "         "
					If GUICtrlRead($TH13txtNumSkSpell) >= 100 Then
						$13SkSpell = "|" & GUICtrlRead($TH13txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainSkSpell = "TRAIN |SkSpell    " & $6SkSpell & $7SkSpell & $8SkSpell & $9SkSpell & $10SkSpell & $11SkSpell & $12SkSpell & $13SkSpell &"|" & @CRLF
	EndIf

;Battl B.
	If GUICtrlRead($TH6txtNumBattleB) > 0 Or GUICtrlRead($TH7txtNumBattleB) > 0 Or GUICtrlRead($TH8txtNumBattleB) > 0 Or GUICtrlRead($TH9txtNumBattleB) > 0 Or GUICtrlRead($TH10txtNumBattleB) > 0 Or GUICtrlRead($TH11txtNumBattleB) > 0 Or GUICtrlRead($TH12txtNumBattleB) > 0  Or GUICtrlRead($TH13txtNumBattleB) > 0 Then
		If GUICtrlRead($TH6txtNumBattleB) >= 0 Then
			$6BattleB = "|" & GUICtrlRead($TH6txtNumBattleB) & "          "
			If GUICtrlRead($TH6txtNumBattleB) >= 10 Then
				$6BattleB = "|" & GUICtrlRead($TH6txtNumBattleB) & "         "
					If GUICtrlRead($TH6txtNumBattleB) >= 100 Then
						$6BattleB = "|" & GUICtrlRead($TH6txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBattleB) >= 0 Then
			$7BattleB = "|" & GUICtrlRead($TH7txtNumBattleB) & "          "
			If GUICtrlRead($TH7txtNumBattleB) >= 10 Then
				$7BattleB = "|" & GUICtrlRead($TH7txtNumBattleB) & "         "
					If GUICtrlRead($TH7txtNumBattleB) >= 100 Then
						$7BattleB = "|" & GUICtrlRead($TH7txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBattleB) >= 0 Then
			$8BattleB = "|" & GUICtrlRead($TH8txtNumBattleB) & "          "
			If GUICtrlRead($TH8txtNumBattleB) >= 10 Then
				$8BattleB = "|" & GUICtrlRead($TH8txtNumBattleB) & "         "
					If GUICtrlRead($TH8txtNumBattleB) >= 100 Then
						$8BattleB = "|" & GUICtrlRead($TH8txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBattleB) >= 0 Then
			$9BattleB = "|" & GUICtrlRead($TH9txtNumBattleB) & "          "
			If GUICtrlRead($TH9txtNumBattleB) >= 10 Then
				$9BattleB = "|" & GUICtrlRead($TH9txtNumBattleB) & "         "
					If GUICtrlRead($TH9txtNumBattleB) >= 100 Then
						$9BattleB = "|" & GUICtrlRead($TH9txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBattleB) >= 0 Then
			$10BattleB = "|" & GUICtrlRead($TH10txtNumBattleB) & "          "
			If GUICtrlRead($TH10txtNumBattleB) >= 10 Then
				$10BattleB = "|" & GUICtrlRead($TH10txtNumBattleB) & "         "
					If GUICtrlRead($TH10txtNumBattleB) >= 100 Then
						$10BattleB = "|" & GUICtrlRead($TH10txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBattleB) >= 0 Then
			$11BattleB = "|" & GUICtrlRead($TH11txtNumBattleB) & "          "
			If GUICtrlRead($TH11txtNumBattleB) >= 10 Then
				$11BattleB = "|" & GUICtrlRead($TH11txtNumBattleB) & "         "
					If GUICtrlRead($TH11txtNumBattleB) >= 100 Then
						$11BattleB = "|" & GUICtrlRead($TH11txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBattleB) >= 0 Then
			$12BattleB = "|" & GUICtrlRead($TH12txtNumBattleB) & "          "
			If GUICtrlRead($TH12txtNumBattleB) >= 10 Then
				$12BattleB = "|" & GUICtrlRead($TH12txtNumBattleB) & "         "
					If GUICtrlRead($TH12txtNumBattleB) >= 100 Then
						$12BattleB = "|" & GUICtrlRead($TH12txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBattleB) >= 0 Then
			$13BattleB = "|" & GUICtrlRead($TH13txtNumBattleB) & "          "
			If GUICtrlRead($TH13txtNumBattleB) >= 10 Then
				$13BattleB = "|" & GUICtrlRead($TH13txtNumBattleB) & "         "
					If GUICtrlRead($TH13txtNumBattleB) >= 100 Then
						$13BattleB = "|" & GUICtrlRead($TH13txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBattleB = "TRAIN |BattleB    " & $6BattleB & $7BattleB & $8BattleB & $9BattleB & $10BattleB & $11BattleB & $12BattleB & $13BattleB &"|" & @CRLF
	EndIf


;Wall Wrecker.
	If GUICtrlRead($TH6txtNumWallw) > 0 Or GUICtrlRead($TH7txtNumWallw) > 0 Or GUICtrlRead($TH8txtNumWallw) > 0 Or GUICtrlRead($TH9txtNumWallw) > 0 Or GUICtrlRead($TH10txtNumWallw) > 0 Or GUICtrlRead($TH11txtNumWallw) > 0 Or GUICtrlRead($TH12txtNumWallw) > 0  Or GUICtrlRead($TH13txtNumWallw) > 0 Then
		If GUICtrlRead($TH6txtNumWallw) >= 0 Then
			$6Wallw = "|" & GUICtrlRead($TH6txtNumWallw) & "          "
			If GUICtrlRead($TH6txtNumWallw) >= 10 Then
				$6Wallw = "|" & GUICtrlRead($TH6txtNumWallw) & "         "
					If GUICtrlRead($TH6txtNumWallw) >= 100 Then
						$6Wallw = "|" & GUICtrlRead($TH6txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWallw) >= 0 Then
			$7Wallw = "|" & GUICtrlRead($TH7txtNumWallw) & "          "
			If GUICtrlRead($TH7txtNumWallw) >= 10 Then
				$7Wallw = "|" & GUICtrlRead($TH7txtNumWallw) & "         "
					If GUICtrlRead($TH7txtNumWallw) >= 100 Then
						$7Wallw = "|" & GUICtrlRead($TH7txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWallw) >= 0 Then
			$8Wallw = "|" & GUICtrlRead($TH8txtNumWallw) & "          "
			If GUICtrlRead($TH8txtNumWallw) >= 10 Then
				$8Wallw = "|" & GUICtrlRead($TH8txtNumWallw) & "         "
					If GUICtrlRead($TH8txtNumWallw) >= 100 Then
						$8Wallw = "|" & GUICtrlRead($TH8txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWallw) >= 0 Then
			$9Wallw = "|" & GUICtrlRead($TH9txtNumWallw) & "          "
			If GUICtrlRead($TH9txtNumWallw) >= 10 Then
				$9Wallw = "|" & GUICtrlRead($TH9txtNumWallw) & "         "
					If GUICtrlRead($TH9txtNumWallw) >= 100 Then
						$9Wallw = "|" & GUICtrlRead($TH9txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWallw) >= 0 Then
			$10Wallw = "|" & GUICtrlRead($TH10txtNumWallw) & "          "
			If GUICtrlRead($TH10txtNumWallw) >= 10 Then
				$10Wallw = "|" & GUICtrlRead($TH10txtNumWallw) & "         "
					If GUICtrlRead($TH10txtNumWallw) >= 100 Then
						$10Wallw = "|" & GUICtrlRead($TH10txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWallw) >= 0 Then
			$11Wallw = "|" & GUICtrlRead($TH11txtNumWallw) & "          "
			If GUICtrlRead($TH11txtNumWallw) >= 10 Then
				$11Wallw = "|" & GUICtrlRead($TH11txtNumWallw) & "         "
					If GUICtrlRead($TH11txtNumWallw) >= 100 Then
						$11Wallw = "|" & GUICtrlRead($TH11txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWallw) >= 0 Then
			$12Wallw = "|" & GUICtrlRead($TH12txtNumWallw) & "          "
			If GUICtrlRead($TH12txtNumWallw) >= 10 Then
				$12Wallw = "|" & GUICtrlRead($TH12txtNumWallw) & "         "
					If GUICtrlRead($TH12txtNumWallw) >= 100 Then
						$12Wallw = "|" & GUICtrlRead($TH12txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumWallw) >= 0 Then
			$13Wallw = "|" & GUICtrlRead($TH13txtNumWallw) & "          "
			If GUICtrlRead($TH13txtNumWallw) >= 10 Then
				$13Wallw = "|" & GUICtrlRead($TH13txtNumWallw) & "         "
					If GUICtrlRead($TH13txtNumWallw) >= 100 Then
						$13Wallw = "|" & GUICtrlRead($TH13txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainWallw = "TRAIN |WallW      " & $6Wallw & $7Wallw & $8Wallw & $9Wallw & $10Wallw & $11Wallw & $12Wallw & $13Wallw &"|" & @CRLF
	EndIf



;~ StoneS
	If GUICtrlRead($TH6txtNumStoneS) > 0 Or GUICtrlRead($TH7txtNumStoneS) > 0 Or GUICtrlRead($TH8txtNumStoneS) > 0 Or GUICtrlRead($TH9txtNumStoneS) > 0 Or GUICtrlRead($TH10txtNumStoneS) > 0 Or GUICtrlRead($TH11txtNumStoneS) > 0 Or GUICtrlRead($TH12txtNumStoneS) > 0 Or GUICtrlRead($TH13txtNumStoneS) > 0 Then
		If GUICtrlRead($TH6txtNumStoneS) >= 0 Then
			$6StoneS = "|" & GUICtrlRead($TH6txtNumStoneS) & "          "
			If GUICtrlRead($TH6txtNumStoneS) >= 10 Then
				$6StoneS = "|" & GUICtrlRead($TH6txtNumStoneS) & "         "
					If GUICtrlRead($TH6txtNumStoneS) >= 100 Then
						$6StoneS = "|" & GUICtrlRead($TH6txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumStoneS) >= 0 Then
			$7StoneS = "|" & GUICtrlRead($TH7txtNumStoneS) & "          "
			If GUICtrlRead($TH7txtNumStoneS) >= 10 Then
				$7StoneS = "|" & GUICtrlRead($TH7txtNumStoneS) & "         "
					If GUICtrlRead($TH7txtNumStoneS) >= 100 Then
						$7StoneS = "|" & GUICtrlRead($TH7txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumStoneS) >= 0 Then
			$8StoneS = "|" & GUICtrlRead($TH8txtNumStoneS) & "          "
			If GUICtrlRead($TH8txtNumStoneS) >= 10 Then
				$8StoneS = "|" & GUICtrlRead($TH8txtNumStoneS) & "         "
					If GUICtrlRead($TH8txtNumStoneS) >= 100 Then
						$8StoneS = "|" & GUICtrlRead($TH8txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumStoneS) >= 0 Then
			$9StoneS = "|" & GUICtrlRead($TH9txtNumStoneS) & "          "
			If GUICtrlRead($TH9txtNumStoneS) >= 10 Then
				$9StoneS = "|" & GUICtrlRead($TH9txtNumStoneS) & "         "
					If GUICtrlRead($TH9txtNumStoneS) >= 100 Then
						$9StoneS = "|" & GUICtrlRead($TH9txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumStoneS) >= 0 Then
			$10StoneS = "|" & GUICtrlRead($TH10txtNumStoneS) & "          "
			If GUICtrlRead($TH10txtNumStoneS) >= 10 Then
				$10StoneS = "|" & GUICtrlRead($TH10txtNumStoneS) & "         "
					If GUICtrlRead($TH10txtNumStoneS) >= 100 Then
						$10StoneS = "|" & GUICtrlRead($TH10txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumStoneS) >= 0 Then
			$11StoneS = "|" & GUICtrlRead($TH11txtNumStoneS) & "          "
			If GUICtrlRead($TH11txtNumStoneS) >= 10 Then
				$11StoneS = "|" & GUICtrlRead($TH11txtNumStoneS) & "         "
					If GUICtrlRead($TH11txtNumStoneS) >= 100 Then
						$11StoneS = "|" & GUICtrlRead($TH11txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumStoneS) >= 0 Then
			$12StoneS = "|" & GUICtrlRead($TH12txtNumStoneS) & "          "
			If GUICtrlRead($TH12txtNumStoneS) >= 10 Then
				$12StoneS = "|" & GUICtrlRead($TH12txtNumStoneS) & "         "
					If GUICtrlRead($TH12txtNumStoneS) >= 100 Then
						$12StoneS = "|" & GUICtrlRead($TH12txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumStoneS) >= 0 Then
			$13StoneS = "|" & GUICtrlRead($TH13txtNumStoneS) & "          "
			If GUICtrlRead($TH13txtNumStoneS) >= 10 Then
				$13StoneS = "|" & GUICtrlRead($TH13txtNumStoneS) & "         "
					If GUICtrlRead($TH13txtNumStoneS) >= 100 Then
						$13StoneS = "|" & GUICtrlRead($TH13txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainStoneS = "TRAIN |StoneS     " & $6StoneS & $7StoneS & $8StoneS & $9StoneS & $10StoneS & $11StoneS & $12StoneS & $13StoneS &"|" & @CRLF
	EndIf

;~ SiegeB
	If GUICtrlRead($TH6txtNumSiegeB) > 0 Or GUICtrlRead($TH7txtNumSiegeB) > 0 Or GUICtrlRead($TH8txtNumSiegeB) > 0 Or GUICtrlRead($TH9txtNumSiegeB) > 0 Or GUICtrlRead($TH10txtNumSiegeB) > 0 Or GUICtrlRead($TH11txtNumSiegeB) > 0 Or GUICtrlRead($TH12txtNumSiegeB) > 0 Or GUICtrlRead($TH13txtNumSiegeB) > 0 Then
;~ 		If GUICtrlRead($TH6txtNumSiegeB) >= 0 Then
;~ 			$6SiegeB = "|" & GUICtrlRead($TH6txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH6txtNumSiegeB) >= 10 Then
;~ 				$6SiegeB = "|" & GUICtrlRead($TH6txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH6txtNumSiegeB) >= 100 Then
						$6SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf
;~ 		If GUICtrlRead($TH7txtNumSiegeB) >= 0 Then
;~ 			$7SiegeB = "|" & GUICtrlRead($TH7txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH7txtNumSiegeB) >= 10 Then
;~ 				$7SiegeB = "|" & GUICtrlRead($TH7txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH7txtNumSiegeB) >= 100 Then
						$7SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH8txtNumSiegeB) >= 0 Then
;~ 			$8SiegeB = "|" & GUICtrlRead($TH8txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH8txtNumSiegeB) >= 10 Then
;~ 				$8SiegeB = "|" & GUICtrlRead($TH8txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH8txtNumSiegeB) >= 100 Then
						$8SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH9txtNumSiegeB) >= 0 Then
;~ 			$9SiegeB = "|" & GUICtrlRead($TH9txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH9txtNumSiegeB) >= 10 Then
;~ 				$9SiegeB = "|" & GUICtrlRead($TH9txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH9txtNumSiegeB) >= 100 Then
						$9SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH10txtNumSiegeB) >= 0 Then
;~ 			$10SiegeB = "|" & GUICtrlRead($TH10txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH10txtNumSiegeB) >= 10 Then
;~ 				$10SiegeB = "|" & GUICtrlRead($TH10txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH10txtNumSiegeB) >= 100 Then
						$10SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH11txtNumSiegeB) >= 0 Then
;~ 			$11SiegeB = "|" & GUICtrlRead($TH11txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH11txtNumSiegeB) >= 10 Then
;~ 				$11SiegeB = "|" & GUICtrlRead($TH11txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH11txtNumSiegeB) >= 100 Then
						$11SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

		If GUICtrlRead($TH12txtNumSiegeB) >= 0 Then
			$12SiegeB = "|" & GUICtrlRead($TH12txtNumSiegeB) & "          "
			If GUICtrlRead($TH12txtNumSiegeB) >= 10 Then
				$12SiegeB = "|" & GUICtrlRead($TH12txtNumSiegeB) & "         "
					If GUICtrlRead($TH12txtNumSiegeB) >= 100 Then
						$12SiegeB = "|" & GUICtrlRead($TH12txtNumSiegeB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumSiegeB) >= 0 Then
			$13SiegeB = "|" & GUICtrlRead($TH13txtNumSiegeB) & "          "
			If GUICtrlRead($TH13txtNumSiegeB) >= 10 Then
				$13SiegeB = "|" & GUICtrlRead($TH13txtNumSiegeB) & "         "
					If GUICtrlRead($TH13txtNumSiegeB) >= 100 Then
						$13SiegeB = "|" & GUICtrlRead($TH13txtNumSiegeB) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainSiegeB = "TRAIN |SiegeB     " & $6SiegeB & $7SiegeB & $8SiegeB & $9SiegeB & $10SiegeB & $11SiegeB & $12SiegeB & $13SiegeB &"|" & @CRLF
	EndIf


;King
   If GUICtrlRead($TH6txtNumKing) > 0 Or GUICtrlRead($TH7txtNumKing) > 0 Or GUICtrlRead($TH8txtNumKing) > 0 Or GUICtrlRead($TH9txtNumKing) > 0 Or GUICtrlRead($TH10txtNumKing) > 0 Or GUICtrlRead($TH11txtNumKing) > 0 Or GUICtrlRead($TH12txtNumKing) > 0 Or GUICtrlRead($TH13txtNumKing) > 0 Then
	  if GUICtrlRead($TH6txtNumKing) = 1 Then
		 $6King = "|1          "
	  EndIf
	  if GUICtrlRead($TH6txtNumKing) = 0 Then
		 $6King = "|0          "
	  EndIf

	  if GUICtrlRead($TH6txtNumKing) > 1 Then
		 If GUICtrlRead($TH6txtNumKingSecond) >= 0 Then
		 $6King = "|" & GUICtrlRead($TH6txtNumKing) & GUICtrlRead($TH6txtNumKingSecond) &"         "
			If GUICtrlRead($TH6txtNumKingSecond) >= 10 Then
			   $6King = "|" & GUICtrlRead($TH6txtNumKing) & GUICtrlRead($TH6txtNumKingSecond) &"        "
				  If GUICtrlRead($TH6txtNumKingSecond) >= 100 Then
				  $6King = "|" & GUICtrlRead($TH6txtNumKing) & GUICtrlRead($TH6txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH7txtNumKing) = 1 Then
		 $7King = "|1          "
	  EndIf
	  if GUICtrlRead($TH7txtNumKing) = 0 Then
		 $7King = "|0          "
	  EndIf

	  if GUICtrlRead($TH7txtNumKing) > 1 Then
		 If GUICtrlRead($TH7txtNumKingSecond) >= 0 Then
		 $7King = "|" & GUICtrlRead($TH7txtNumKing) & GUICtrlRead($TH7txtNumKingSecond) &"         "
			If GUICtrlRead($TH7txtNumKingSecond) >= 10 Then
			   $7King = "|" & GUICtrlRead($TH7txtNumKing) & GUICtrlRead($TH7txtNumKingSecond) &"        "
				  If GUICtrlRead($TH7txtNumKingSecond) >= 100 Then
				  $7King = "|" & GUICtrlRead($TH7txtNumKing) & GUICtrlRead($TH7txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
	  if GUICtrlRead($TH8txtNumKing) = 1 Then
		 $8King = "|1          "
	  EndIf
	  if GUICtrlRead($TH8txtNumKing) = 0 Then
		 $8King = "|0          "
	  EndIf
	  if GUICtrlRead($TH8txtNumKing) > 1 Then
		 If GUICtrlRead($TH8txtNumKingSecond) >= 0 Then
		 $8King = "|" & GUICtrlRead($TH8txtNumKing) & GUICtrlRead($TH8txtNumKingSecond) &"         "
			If GUICtrlRead($TH8txtNumKingSecond) >= 10 Then
			   $8King = "|" & GUICtrlRead($TH8txtNumKing) & GUICtrlRead($TH8txtNumKingSecond) &"        "
				  If GUICtrlRead($TH8txtNumKingSecond) >= 100 Then
				  $8King = "|" & GUICtrlRead($TH8txtNumKing) & GUICtrlRead($TH8txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH9txtNumKing) = 1 Then
		 $9King = "|1          "
	  EndIf
	  if GUICtrlRead($TH9txtNumKing) = 0 Then
		 $9King = "|0          "
	  EndIf
	  if GUICtrlRead($TH9txtNumKing) > 1 Then
		 If GUICtrlRead($TH9txtNumKingSecond) >= 0 Then
		 $9King = "|" & GUICtrlRead($TH9txtNumKing) & GUICtrlRead($TH9txtNumKingSecond) &"         "
			If GUICtrlRead($TH9txtNumKingSecond) >= 10 Then
			   $9King = "|" & GUICtrlRead($TH9txtNumKing) & GUICtrlRead($TH9txtNumKingSecond) &"        "
				  If GUICtrlRead($TH9txtNumKingSecond) >= 100 Then
				  $9King = "|" & GUICtrlRead($TH9txtNumKing) & GUICtrlRead($TH9txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH10txtNumKing) = 1 Then
		 $10King = "|1          "
	  EndIf
	  if GUICtrlRead($TH10txtNumKing) = 0 Then
		 $10King = "|0          "
	  EndIf

	  if GUICtrlRead($TH10txtNumKing) > 1 Then
		 If GUICtrlRead($TH10txtNumKingSecond) >= 0 Then
		 $10King = "|" & GUICtrlRead($TH10txtNumKing) & GUICtrlRead($TH10txtNumKingSecond) &"         "
			If GUICtrlRead($TH10txtNumKingSecond) >= 10 Then
			   $10King = "|" & GUICtrlRead($TH10txtNumKing) & GUICtrlRead($TH10txtNumKingSecond) &"        "
				  If GUICtrlRead($TH10txtNumKingSecond) >= 100 Then
				  $10King = "|" & GUICtrlRead($TH10txtNumKing) & GUICtrlRead($TH10txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH11txtNumKing) = 1 Then
		 $11King = "|1          "
	  EndIf
	  if GUICtrlRead($TH11txtNumKing) = 0 Then
		 $11King = "|0          "
	  EndIf
	  if GUICtrlRead($TH11txtNumKing) > 1 Then
		 If GUICtrlRead($TH11txtNumKingSecond) >= 0 Then
		 $11King = "|" & GUICtrlRead($TH11txtNumKing) & GUICtrlRead($TH11txtNumKingSecond) &"         "
			If GUICtrlRead($TH11txtNumKingSecond) >= 10 Then
			   $11King = "|" & GUICtrlRead($TH11txtNumKing) & GUICtrlRead($TH11txtNumKingSecond) &"        "
				  If GUICtrlRead($TH11txtNumKingSecond) >= 100 Then
				  $11King = "|" & GUICtrlRead($TH11txtNumKing) & GUICtrlRead($TH11txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH12txtNumKing) = 1 Then
		 $12King = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumKing) = 0 Then
		 $12King = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumKing) > 1 Then
		 If GUICtrlRead($TH12txtNumKingSecond) >= 0 Then
		 $12King = "|" & GUICtrlRead($TH12txtNumKing) & GUICtrlRead($TH12txtNumKingSecond) &"         "
			If GUICtrlRead($TH12txtNumKingSecond) >= 10 Then
			   $12King = "|" & GUICtrlRead($TH12txtNumKing) & GUICtrlRead($TH12txtNumKingSecond) &"        "
				  If GUICtrlRead($TH12txtNumKingSecond) >= 100 Then
				  $12King = "|" & GUICtrlRead($TH12txtNumKing) & GUICtrlRead($TH12txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  if GUICtrlRead($TH13txtNumKing) = 1 Then
		 $13King = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumKing) = 0 Then
		 $13King = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumKing) > 1 Then
		 If GUICtrlRead($TH13txtNumKingSecond) >= 0 Then
		 $13King = "|" & GUICtrlRead($TH13txtNumKing) & GUICtrlRead($TH13txtNumKingSecond) &"         "
			If GUICtrlRead($TH13txtNumKingSecond) >= 10 Then
			   $13King = "|" & GUICtrlRead($TH13txtNumKing) & GUICtrlRead($TH13txtNumKingSecond) &"        "
				  If GUICtrlRead($TH13txtNumKingSecond) >= 100 Then
				  $13King = "|" & GUICtrlRead($TH13txtNumKing) & GUICtrlRead($TH13txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainKing = "TRAIN |King       " & $6King & $7King & $8King & $9King & $10King & $11King & $12King & $13King &"|" & @CRLF
   EndIf


;Queen
   If GUICtrlRead($TH6txtNumQueen) > 0 Or GUICtrlRead($TH7txtNumQueen) > 0 Or GUICtrlRead($TH8txtNumQueen) > 0 Or GUICtrlRead($TH9txtNumQueen) > 0 Or GUICtrlRead($TH10txtNumQueen) > 0 Or GUICtrlRead($TH11txtNumQueen) > 0 Or GUICtrlRead($TH12txtNumQueen) > 0  Or GUICtrlRead($TH13txtNumQueen) > 0 Then
	  if GUICtrlRead($TH6txtNumQueen) = 1 Then
		 $6Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH6txtNumQueen) = 0 Then
		 $6Queen = "|0          "
	  EndIf

	  if GUICtrlRead($TH6txtNumQueen) > 1 Then
		 If GUICtrlRead($TH6txtNumQueenSecond) >= 0 Then
		 $6Queen = "|" & GUICtrlRead($TH6txtNumQueen) & GUICtrlRead($TH6txtNumQueenSecond) &"         "
			If GUICtrlRead($TH6txtNumQueenSecond) >= 10 Then
			   $6Queen = "|" & GUICtrlRead($TH6txtNumQueen) & GUICtrlRead($TH6txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH6txtNumQueenSecond) >= 100 Then
				  $6Queen = "|" & GUICtrlRead($TH6txtNumQueen) & GUICtrlRead($TH6txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH7txtNumQueen) = 1 Then
		 $7Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH7txtNumQueen) = 0 Then
		 $7Queen = "|0          "
	  EndIf

	  if GUICtrlRead($TH7txtNumQueen) > 1 Then
		 If GUICtrlRead($TH7txtNumQueenSecond) >= 0 Then
		 $7Queen = "|" & GUICtrlRead($TH7txtNumQueen) & GUICtrlRead($TH7txtNumQueenSecond) &"         "
			If GUICtrlRead($TH7txtNumQueenSecond) >= 10 Then
			   $7Queen = "|" & GUICtrlRead($TH7txtNumQueen) & GUICtrlRead($TH7txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH7txtNumQueenSecond) >= 100 Then
				  $7Queen = "|" & GUICtrlRead($TH7txtNumQueen) & GUICtrlRead($TH7txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
	  if GUICtrlRead($TH8txtNumQueen) = 1 Then
		 $8Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH8txtNumQueen) = 0 Then
		 $8Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH8txtNumQueen) > 1 Then
		 If GUICtrlRead($TH8txtNumQueenSecond) >= 0 Then
		 $8Queen = "|" & GUICtrlRead($TH8txtNumQueen) & GUICtrlRead($TH8txtNumQueenSecond) &"         "
			If GUICtrlRead($TH8txtNumQueenSecond) >= 10 Then
			   $8Queen = "|" & GUICtrlRead($TH8txtNumQueen) & GUICtrlRead($TH8txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH8txtNumQueenSecond) >= 100 Then
				  $8Queen = "|" & GUICtrlRead($TH8txtNumQueen) & GUICtrlRead($TH8txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH9txtNumQueen) = 1 Then
		 $9Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH9txtNumQueen) = 0 Then
		 $9Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH9txtNumQueen) > 1 Then
		 If GUICtrlRead($TH9txtNumQueenSecond) >= 0 Then
		 $9Queen = "|" & GUICtrlRead($TH9txtNumQueen) & GUICtrlRead($TH9txtNumQueenSecond) &"         "
			If GUICtrlRead($TH9txtNumQueenSecond) >= 10 Then
			   $9Queen = "|" & GUICtrlRead($TH9txtNumQueen) & GUICtrlRead($TH9txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH9txtNumQueenSecond) >= 100 Then
				  $9Queen = "|" & GUICtrlRead($TH9txtNumQueen) & GUICtrlRead($TH9txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH10txtNumQueen) = 1 Then
		 $10Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH10txtNumQueen) = 0 Then
		 $10Queen = "|0          "
	  EndIf

	  if GUICtrlRead($TH10txtNumQueen) > 1 Then
		 If GUICtrlRead($TH10txtNumQueenSecond) >= 0 Then
		 $10Queen = "|" & GUICtrlRead($TH10txtNumQueen) & GUICtrlRead($TH10txtNumQueenSecond) &"         "
			If GUICtrlRead($TH10txtNumQueenSecond) >= 10 Then
			   $10Queen = "|" & GUICtrlRead($TH10txtNumQueen) & GUICtrlRead($TH10txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH10txtNumQueenSecond) >= 100 Then
				  $10Queen = "|" & GUICtrlRead($TH10txtNumQueen) & GUICtrlRead($TH10txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH11txtNumQueen) = 1 Then
		 $11Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH11txtNumQueen) = 0 Then
		 $11Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH11txtNumQueen) > 1 Then
		 If GUICtrlRead($TH11txtNumQueenSecond) >= 0 Then
		 $11Queen = "|" & GUICtrlRead($TH11txtNumQueen) & GUICtrlRead($TH11txtNumQueenSecond) &"         "
			If GUICtrlRead($TH11txtNumQueenSecond) >= 10 Then
			   $11Queen = "|" & GUICtrlRead($TH11txtNumQueen) & GUICtrlRead($TH11txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH11txtNumQueenSecond) >= 100 Then
				  $11Queen = "|" & GUICtrlRead($TH11txtNumQueen) & GUICtrlRead($TH11txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH12txtNumQueen) = 1 Then
		 $12Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumQueen) = 0 Then
		 $12Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumQueen) > 1 Then
		 If GUICtrlRead($TH12txtNumQueenSecond) >= 0 Then
		 $12Queen = "|" & GUICtrlRead($TH12txtNumQueen) & GUICtrlRead($TH12txtNumQueenSecond) &"         "
			If GUICtrlRead($TH12txtNumQueenSecond) >= 10 Then
			   $12Queen = "|" & GUICtrlRead($TH12txtNumQueen) & GUICtrlRead($TH12txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH12txtNumQueenSecond) >= 100 Then
				  $12Queen = "|" & GUICtrlRead($TH12txtNumQueen) & GUICtrlRead($TH12txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH13txtNumQueen) = 1 Then
		 $13Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumQueen) = 0 Then
		 $13Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumQueen) > 1 Then
		 If GUICtrlRead($TH13txtNumQueenSecond) >= 0 Then
		 $13Queen = "|" & GUICtrlRead($TH13txtNumQueen) & GUICtrlRead($TH13txtNumQueenSecond) &"         "
			If GUICtrlRead($TH13txtNumQueenSecond) >= 10 Then
			   $13Queen = "|" & GUICtrlRead($TH13txtNumQueen) & GUICtrlRead($TH13txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH13txtNumQueenSecond) >= 100 Then
				  $13Queen = "|" & GUICtrlRead($TH13txtNumQueen) & GUICtrlRead($TH13txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainQueen = "TRAIN |Queen      " & $6Queen & $7Queen & $8Queen & $9Queen & $10Queen & $11Queen & $12Queen & $13Queen &"|" & @CRLF
   EndIf


;Warden
   If GUICtrlRead($TH6txtNumWarden) > 0 Or GUICtrlRead($TH7txtNumWarden) > 0 Or GUICtrlRead($TH8txtNumWarden) > 0 Or GUICtrlRead($TH9txtNumWarden) > 0 Or GUICtrlRead($TH10txtNumWarden) > 0 Or GUICtrlRead($TH11txtNumWarden) > 0 Or GUICtrlRead($TH12txtNumWarden) > 0  Or GUICtrlRead($TH13txtNumWarden) > 0 Then
	  if GUICtrlRead($TH6txtNumWarden) = 1 Then
		 $6Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH6txtNumWarden) = 0 Then
		 $6Warden = "|0          "
	  EndIf

	  if GUICtrlRead($TH6txtNumWarden) > 1 Then
		 If GUICtrlRead($TH6txtNumWardenSecond) >= 0 Then
		 $6Warden = "|" & GUICtrlRead($TH6txtNumWarden) & GUICtrlRead($TH6txtNumWardenSecond) &"         "
			If GUICtrlRead($TH6txtNumWardenSecond) >= 10 Then
			   $6Warden = "|" & GUICtrlRead($TH6txtNumWarden) & GUICtrlRead($TH6txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH6txtNumWardenSecond) >= 100 Then
				  $6Warden = "|" & GUICtrlRead($TH6txtNumWarden) & GUICtrlRead($TH6txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH7txtNumWarden) = 1 Then
		 $7Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH7txtNumWarden) = 0 Then
		 $7Warden = "|0          "
	  EndIf

	  if GUICtrlRead($TH7txtNumWarden) > 1 Then
		 If GUICtrlRead($TH7txtNumWardenSecond) >= 0 Then
		 $7Warden = "|" & GUICtrlRead($TH7txtNumWarden) & GUICtrlRead($TH7txtNumWardenSecond) &"         "
			If GUICtrlRead($TH7txtNumWardenSecond) >= 10 Then
			   $7Warden = "|" & GUICtrlRead($TH7txtNumWarden) & GUICtrlRead($TH7txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH7txtNumWardenSecond) >= 100 Then
				  $7Warden = "|" & GUICtrlRead($TH7txtNumWarden) & GUICtrlRead($TH7txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
	  if GUICtrlRead($TH8txtNumWarden) = 1 Then
		 $8Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH8txtNumWarden) = 0 Then
		 $8Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH8txtNumWarden) > 1 Then
		 If GUICtrlRead($TH8txtNumWardenSecond) >= 0 Then
		 $8Warden = "|" & GUICtrlRead($TH8txtNumWarden) & GUICtrlRead($TH8txtNumWardenSecond) &"         "
			If GUICtrlRead($TH8txtNumWardenSecond) >= 10 Then
			   $8Warden = "|" & GUICtrlRead($TH8txtNumWarden) & GUICtrlRead($TH8txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH8txtNumWardenSecond) >= 100 Then
				  $8Warden = "|" & GUICtrlRead($TH8txtNumWarden) & GUICtrlRead($TH8txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH9txtNumWarden) = 1 Then
		 $9Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH9txtNumWarden) = 0 Then
		 $9Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH9txtNumWarden) > 1 Then
		 If GUICtrlRead($TH9txtNumWardenSecond) >= 0 Then
		 $9Warden = "|" & GUICtrlRead($TH9txtNumWarden) & GUICtrlRead($TH9txtNumWardenSecond) &"         "
			If GUICtrlRead($TH9txtNumWardenSecond) >= 10 Then
			   $9Warden = "|" & GUICtrlRead($TH9txtNumWarden) & GUICtrlRead($TH9txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH9txtNumWardenSecond) >= 100 Then
				  $9Warden = "|" & GUICtrlRead($TH9txtNumWarden) & GUICtrlRead($TH9txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH10txtNumWarden) = 1 Then
		 $10Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH10txtNumWarden) = 0 Then
		 $10Warden = "|0          "
	  EndIf

	  if GUICtrlRead($TH10txtNumWarden) > 1 Then
		 If GUICtrlRead($TH10txtNumWardenSecond) >= 0 Then
		 $10Warden = "|" & GUICtrlRead($TH10txtNumWarden) & GUICtrlRead($TH10txtNumWardenSecond) &"         "
			If GUICtrlRead($TH10txtNumWardenSecond) >= 10 Then
			   $10Warden = "|" & GUICtrlRead($TH10txtNumWarden) & GUICtrlRead($TH10txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH10txtNumWardenSecond) >= 100 Then
				  $10Warden = "|" & GUICtrlRead($TH10txtNumWarden) & GUICtrlRead($TH10txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH11txtNumWarden) = 1 Then
		 $11Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH11txtNumWarden) = 0 Then
		 $11Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH11txtNumWarden) > 1 Then
		 If GUICtrlRead($TH11txtNumWardenSecond) >= 0 Then
		 $11Warden = "|" & GUICtrlRead($TH11txtNumWarden) & GUICtrlRead($TH11txtNumWardenSecond) &"         "
			If GUICtrlRead($TH11txtNumWardenSecond) >= 10 Then
			   $11Warden = "|" & GUICtrlRead($TH11txtNumWarden) & GUICtrlRead($TH11txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH11txtNumWardenSecond) >= 100 Then
				  $11Warden = "|" & GUICtrlRead($TH11txtNumWarden) & GUICtrlRead($TH11txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH12txtNumWarden) = 1 Then
		 $12Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumWarden) = 0 Then
		 $12Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumWarden) > 1 Then
		 If GUICtrlRead($TH12txtNumWardenSecond) >= 0 Then
		 $12Warden = "|" & GUICtrlRead($TH12txtNumWarden) & GUICtrlRead($TH12txtNumWardenSecond) &"         "
			If GUICtrlRead($TH12txtNumWardenSecond) >= 10 Then
			   $12Warden = "|" & GUICtrlRead($TH12txtNumWarden) & GUICtrlRead($TH12txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH12txtNumWardenSecond) >= 100 Then
				  $12Warden = "|" & GUICtrlRead($TH12txtNumWarden) & GUICtrlRead($TH12txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH13txtNumWarden) = 1 Then
		 $13Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumWarden) = 0 Then
		 $13Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumWarden) > 1 Then
		 If GUICtrlRead($TH13txtNumWardenSecond) >= 0 Then
		 $13Warden = "|" & GUICtrlRead($TH13txtNumWarden) & GUICtrlRead($TH13txtNumWardenSecond) &"         "
			If GUICtrlRead($TH13txtNumWardenSecond) >= 10 Then
			   $13Warden = "|" & GUICtrlRead($TH13txtNumWarden) & GUICtrlRead($TH13txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH13txtNumWardenSecond) >= 100 Then
				  $13Warden = "|" & GUICtrlRead($TH13txtNumWarden) & GUICtrlRead($TH13txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainWarden = "TRAIN |Warden     " & $6Warden & $7Warden & $8Warden & $9Warden & $10Warden & $11Warden & $12Warden & $13Warden &"|" & @CRLF
   EndIf


;Royale Champion

   If GUICtrlRead($TH6txtNumRoyaleC) > 0 Or GUICtrlRead($TH7txtNumRoyaleC) > 0 Or GUICtrlRead($TH8txtNumRoyaleC) > 0 Or GUICtrlRead($TH9txtNumRoyaleC) > 0 Or GUICtrlRead($TH10txtNumRoyaleC) > 0 Or GUICtrlRead($TH11txtNumRoyaleC) > 0 Or GUICtrlRead($TH12txtNumRoyaleC) > 0 Or GUICtrlRead($TH13txtNumRoyaleC) > 0 Then
;~ 	  if GUICtrlRead($TH6txtNumRoyaleC) = 1 Then
;~ 		 $6RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH6txtNumRoyaleC) = 0 Then
		 $6RoyaleC = "|0          "
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH6txtNumRoyalC) > 1 Then
;~ 		 If GUICtrlRead($TH6txtNumRoyalCSecond) >= 0 Then
;~ 		 $6RoyalC = "|" & GUICtrlRead($TH6txtNumRoyalC) & GUICtrlRead($TH6txtNumRoyalCSecond) &"         "
;~ 			If GUICtrlRead($TH6txtNumRoyalCSecond) >= 10 Then
;~ 			   $6RoyalC = "|" & GUICtrlRead($TH6txtNumRoyalC) & GUICtrlRead($TH6txtNumRoyalCSecond) &"        "
;~ 				  If GUICtrlRead($TH6txtNumRoyalCSecond) >= 100 Then
;~ 				  $6RoyalC = "|" & GUICtrlRead($TH6txtNumRoyalC) & GUICtrlRead($TH6txtNumRoyalCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH7txtNumRoyalC) = 1 Then
;~ 		 $7RoyalC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH7txtNumRoyalC) = 0 Then
		 $7RoyaleC = "|0          "
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH7txtNumRoyalC) > 1 Then
;~ 		 If GUICtrlRead($TH7txtNumRoyalCSecond) >= 0 Then
;~ 		 $7RoyalC = "|" & GUICtrlRead($TH7txtNumRoyalC) & GUICtrlRead($TH7txtNumRoyalCSecond) &"         "
;~ 			If GUICtrlRead($TH7txtNumRoyalCSecond) >= 10 Then
;~ 			   $7RoyalC = "|" & GUICtrlRead($TH7txtNumRoyalC) & GUICtrlRead($TH7txtNumRoyalCSecond) &"        "
;~ 				  If GUICtrlRead($TH7txtNumRoyalCSecond) >= 100 Then
;~ 				  $7RoyalC = "|" & GUICtrlRead($TH7txtNumRoyalC) & GUICtrlRead($TH7txtNumRoyalCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH8txtNumRoyalC) = 1 Then
;~ 		 $8RoyalC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH8txtNumRoyalC) = 0 Then
		 $8RoyaleC = "|0          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH8txtNumRoyalC) > 1 Then
;~ 		 If GUICtrlRead($TH8txtNumRoyalCSecond) >= 0 Then
;~ 		 $8RoyalC = "|" & GUICtrlRead($TH8txtNumRoyalC) & GUICtrlRead($TH8txtNumRoyalCSecond) &"         "
;~ 			If GUICtrlRead($TH8txtNumRoyalCSecond) >= 10 Then
;~ 			   $8RoyalC = "|" & GUICtrlRead($TH8txtNumRoyalC) & GUICtrlRead($TH8txtNumRoyalCSecond) &"        "
;~ 				  If GUICtrlRead($TH8txtNumRoyalCSecond) >= 100 Then
;~ 				  $8RoyalC = "|" & GUICtrlRead($TH8txtNumRoyalC) & GUICtrlRead($TH8txtNumRoyalCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH9txtNumRoyalC) = 1 Then
;~ 		 $9RoyalC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH9txtNumRoyalC) = 0 Then
		 $9RoyaleC = "|0          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH9txtNumRoyalC) > 1 Then
;~ 		 If GUICtrlRead($TH9txtNumRoyalCSecond) >= 0 Then
;~ 		 $9RoyalC = "|" & GUICtrlRead($TH9txtNumRoyalC) & GUICtrlRead($TH9txtNumRoyalCSecond) &"         "
;~ 			If GUICtrlRead($TH9txtNumRoyalCSecond) >= 10 Then
;~ 			   $9RoyalC = "|" & GUICtrlRead($TH9txtNumRoyalC) & GUICtrlRead($TH9txtNumRoyalCSecond) &"        "
;~ 				  If GUICtrlRead($TH9txtNumRoyalCSecond) >= 100 Then
;~ 				  $9RoyalC = "|" & GUICtrlRead($TH9txtNumRoyalC) & GUICtrlRead($TH9txtNumRoyalCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH10txtNumRoyalC) = 1 Then
;~ 		 $10RoyalC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH10txtNumRoyalC) = 0 Then
		 $10RoyaleC = "|0          "
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH10txtNumRoyalC) > 1 Then
;~ 		 If GUICtrlRead($TH10txtNumRoyalCSecond) >= 0 Then
;~ 		 $10RoyalC = "|" & GUICtrlRead($TH10txtNumRoyalC) & GUICtrlRead($TH10txtNumRoyalCSecond) &"         "
;~ 			If GUICtrlRead($TH10txtNumRoyalCSecond) >= 10 Then
;~ 			   $10RoyalC = "|" & GUICtrlRead($TH10txtNumRoyalC) & GUICtrlRead($TH10txtNumRoyalCSecond) &"        "
;~ 				  If GUICtrlRead($TH10txtNumRoyalCSecond) >= 100 Then
;~ 				  $10RoyalC = "|" & GUICtrlRead($TH10txtNumRoyalC) & GUICtrlRead($TH10txtNumRoyalCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH11txtNumRoyalC) = 1 Then
;~ 		 $11RoyalC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH11txtNumRoyalC) = 0 Then
		 $11RoyaleC = "|0          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH11txtNumRoyalC) > 1 Then
;~ 		 If GUICtrlRead($TH11txtNumRoyalCSecond) >= 0 Then
;~ 		 $11RoyalC = "|" & GUICtrlRead($TH11txtNumRoyalC) & GUICtrlRead($TH11txtNumRoyalCSecond) &"         "
;~ 			If GUICtrlRead($TH11txtNumRoyalCSecond) >= 10 Then
;~ 			   $11RoyalC = "|" & GUICtrlRead($TH11txtNumRoyalC) & GUICtrlRead($TH11txtNumRoyalCSecond) &"        "
;~ 				  If GUICtrlRead($TH11txtNumRoyalCSecond) >= 100 Then
;~ 				  $11RoyalC = "|" & GUICtrlRead($TH11txtNumRoyalC) & GUICtrlRead($TH11txtNumRoyalCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

	  if GUICtrlRead($TH12txtNumRoyaleC) = 1 Then
		 $12RoyaleC = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumRoyaleC) = 0 Then
		 $12RoyaleC = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumRoyaleC) > 1 Then
		 If GUICtrlRead($TH12txtNumRoyaleCSecond) >= 0 Then
		 $12RoyaleC = "|" & GUICtrlRead($TH12txtNumRoyaleC) & GUICtrlRead($TH12txtNumRoyaleCSecond) &"         "
			If GUICtrlRead($TH12txtNumRoyaleCSecond) >= 10 Then
			   $12RoyaleC = "|" & GUICtrlRead($TH12txtNumRoyaleC) & GUICtrlRead($TH12txtNumRoyaleCSecond) &"        "
				  If GUICtrlRead($TH12txtNumRoyaleCSecond) >= 100 Then
				  $12RoyaleC = "|" & GUICtrlRead($TH12txtNumRoyaleC) & GUICtrlRead($TH12txtNumRoyaleCSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
  if GUICtrlRead($TH13txtNumRoyaleC) = 1 Then
		 $13RoyaleC = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumRoyaleC) = 0 Then
		 $13RoyaleC = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumRoyaleC) > 1 Then
		 If GUICtrlRead($TH13txtNumRoyaleCSecond) >= 0 Then
		 $13RoyaleC = "|" & GUICtrlRead($TH13txtNumRoyaleC) & GUICtrlRead($TH13txtNumRoyaleCSecond) &"         "
			If GUICtrlRead($TH13txtNumRoyaleCSecond) >= 10 Then
			   $13RoyaleC = "|" & GUICtrlRead($TH13txtNumRoyaleC) & GUICtrlRead($TH13txtNumRoyaleCSecond) &"        "
				  If GUICtrlRead($TH13txtNumRoyaleCSecond) >= 100 Then
				  $13RoyaleC = "|" & GUICtrlRead($TH13txtNumRoyaleC) & GUICtrlRead($TH13txtNumRoyaleCSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainRoyaleC = "TRAIN |Champion   " & $6RoyaleC & $7RoyaleC & $8RoyaleC & $9RoyaleC & $10RoyaleC & $11RoyaleC & $12RoyaleC & $13RoyaleC &"|" & @CRLF
   EndIf






$TrainCSVWrite =  $TrainBarb & $TrainArcher & $TrainGaint & $TrainGoblin & $TrainWallB & $TrainBalloon & $TrainWizard & $TrainHealer & $TrainDragon &  $TrainPekka & $TrainBabyDragon & $TrainMiner & $TrainEdrag & $TrainYeti & $TrainMini & $TrainHogsRider & $TrainValkyre & $TrainGolem & $TrainWitch & $TrainLava & $TrainBowler & $TrainIceGolem & $TrainLSpell & $TrainHSpell & $TrainRSpell & $TrainJSpell & $TrainFSpell & $TrainPSpell & $TrainCSpell & $TrainESpell & $TrainHaSpell & $TrainSkSpell & $TrainBaSpell & $TrainBattleB & $TrainWallw & $TrainStoneS & $TrainSiegeB & $TrainKing & $TrainQueen & $TrainWarden & $TrainRoyaleC


EndFunc



