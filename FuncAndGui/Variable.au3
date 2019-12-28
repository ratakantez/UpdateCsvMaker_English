
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

Global $AddRandomXandY
Global $txtRandomX
Global $txtRandomY
Global $InputRandomX=0
Global $InputRandomY=0
Global $Comment = ""
Global $Comment2 = ""

Global $Program_Name = "CSV Maker "
Global $Program_Version = "v1.6"

Global $InfoAfterStart

Global $ShouldIHideSpellPoint
Global $CheckWait
Global $WaitInput1 = 0
Global $WaitInput2 = 0
Global $CMBWaitBreakCommand
Global $SetWait = "           "
Global $WaitCommandCSV
Global $WaitCommand = "           "
Global $PicWait
Global $lblWait
Global $lblWait2

Global $CountBarbarian = 0
Global $CountBarbarianSize = 0
Global $CountArcher = 0
Global $CountArcherSize = 0
Global $CountGiant = 0
Global $CountGiantSize = 0
Global $CountGoblin = 0
Global $CountGoblinSize = 0
Global $CountWallBreaker = 0
Global $CountWallBreakerSize = 0
Global $CountBaloon = 0
Global $CountBaloonSize = 0
Global $CountWizard = 0
Global $CountWizardSize = 0
Global $CountHealer = 0
Global $CountHealerSize = 0
Global $CountDragon = 0
Global $CountDragonSize  = 0
Global $CountPekka = 0
Global $CountPekkaSize = 0
Global $CountBabyDragon = 0
Global $CountBabyDragonSize = 0
Global $CountMiner = 0
Global $CountMinerSize = 0
Global $CountElectroDragon = 0
Global $CountElectroDragonSize = 0
Global $CountYeti = 0
Global $CountYetiSize = 0
Global $CountMinion = 0
Global $CountMinionSize = 0
Global $CountHogRider = 0
Global $CountHogRiderSize = 0
Global $CountValkyre = 0
Global $CountValkyreSize = 0
Global $CountGolem = 0
Global $CountGolemSize = 0
Global $CountWitch = 0
Global $CountWitchSize = 0
Global $CountLavaHound = 0
Global $CountLavaHoundSize = 0
Global $CountBowler = 0
Global $CountBowlerSize = 0
Global $CountIceGolem = 0
Global $CountIceGolemSize = 0
Global $CountLSpell = 0
Global $CountLSpellSize = 0
Global $CountHSpell = 0
Global $CountHSpellSize = 0
Global $CountRSpell = 0
Global $CountRSpellSize = 0
Global $CountJSpell = 0
Global $CountJSpellSize = 0
Global $CountFSpell = 0
Global $CountFSpellSize = 0
Global $CountCSpell = 0
Global $CountCSpellSize = 0
Global $CountPSpell = 0
Global $CountPSpellSize = 0
Global $CountESpell = 0
Global $CountESpellSize = 0
Global $CountHaSpell = 0
Global $CountHaSpellSize = 0
Global $CountSkSpell = 0
Global $CountSkSpellSize = 0
Global $CountBtSpell = 0
Global $CountBtSpellSize = 0
Global $CountUsedBarbarianShow
Global $CountUsedBarbarianSizeShow
Global $CountUsedArcherShow
Global $CountUsedArcherSizeShow
Global $CountUsedGiantShow
Global $CountUsedGiantSizeShow
Global $CountUsedGoblinShow
Global $CountUsedGoblinSizeShow
Global $CountUsedWallBreakerShow
Global $CountUsedWallBreakerSizeShow
Global $CountUsedBaloonShow
Global $CountUsedBaloonSizeShow
Global $CountUsedWizardShow
Global $CountUsedWizardSizeShow
Global $CountUsedHealerShow
Global $CountUsedHealerSizeShow
Global $CountUsedDragonShow
Global $CountUsedDragonSizeShow
Global $CountUsedPekkaShow
Global $CountUsedPekkaSizeShow
Global $CountUsedBabyDragonShow
Global $CountUsedBabyDragonSizeShow
Global $CountUsedMinerShow
Global $CountUsedMinerSizeShow
Global $CountUsedElectroDragonShow
Global $CountUsedElectroDragonSizeShow
Global $CountUsedYetiShow
Global $CountUsedYetiSizeShow
Global $CountUsedMinionShow
Global $CountUsedMinionSizeShow
Global $CountUsedHogRiderShow
Global $CountUsedHogRiderSizeShow
Global $CountUsedValkyreShow
Global $CountUsedValkyreSizeShow
Global $CountUsedGolemShow
Global $CountUsedGolemSizeShow
Global $CountUsedWitchShow
Global $CountUsedWitchSizeShow
Global $CountUsedLavaHoundShow
Global $CountUsedLavaHoundSizeShow
Global $CountUsedBowlerShow
Global $CountUsedBowlerSizeShow
Global $CountUsedIceGolemShow
Global $CountUsedIceGolemSizeShow
Global $CountUsedLSpellShow
Global $CountUsedLSpellSizeShow
Global $CountUsedHSpellShow
Global $CountUsedHSpellSizeShow
Global $CountUsedRSpellShow
Global $CountUsedRSpellSizeShow
Global $CountUsedJSpellShow
Global $CountUsedJSpellSizeShow
Global $CountUsedFSpellShow
Global $CountUsedFSpellSizeShow
Global $CountUsedCSpellShow
Global $CountUsedCSpellSizeShow
Global $CountUsedPSpellShow
Global $CountUsedPSpellSizeShow
Global $CountUsedESpellShow
Global $CountUsedESpellSizeShow
Global $CountUsedHaSpellShow
Global $CountUsedHaSpellSizeShow
Global $CountUsedSkSpellShow
Global $CountUsedSkSpellSizeShow
Global $CountUsedBtSpellShow
Global $CountUsedBtSpellSizeShow
Global $CountUsedKingShow
Global $CountUsedQueenShow
Global $CountUsedWardenShow
Global $CountUsedRoyalChampionShow
Global $CountUsedSSShow
Global $CountUsedSBShow
Global $CountUsedCCShow
Global $CountUsedBBShow
Global $CountUsedWWShow
Global $CountKing = 0
Global $CountQueen = 0
Global $CountWarden = 0
Global $CountRoyalChampion = 0
Global $CountCC = 0
Global $CountWW = 0
Global $CountSS = 0
Global $CountBB = 0
Global $CountSB = 0


Global $TextUsedArmy
Global $TextUsedArmyEnter
Global $ArmyCountTXT
Global $SumOfArmySizeCount = 0
Global $SumOfArmySizeCountShow
Global $SumOfSpellSizeCount = 0
Global $SumOfSpellSizeCountShow

Global $ErrorADDcsv = 0
Global $PtRadioTotal
Global $PtRadiowall1
Global $PtRadiowall2
Global $PtRadioEagle
Global $PtRadioInferno
Global $PtRadioXbow
Global $PtRadioWizzTower
Global $PtRadioAirDefense
Global $PtRadioTH
Global $PtRadioMortar
Global $PtRadioScatterShot
Global $FristStartErrors = 1
Global $CounterTroop_SpellSize = 0
Global $CounterTroop_TroopSize = 1
Global $CounterTroop_UseTroop = 0
Global $CounterTroop_UseSpell = 0



Global $UndoLine
Global $GuiLastAddTilePoint
Global $AddTileChoose = False

Global $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\Cursor\Barbarian.cur')

Global $LOGName = "Barbarian"
Global $LOGEnter = ""
Global $LOGEnter2 = ""
Global $LogBuilding
Global $SideSUM = 0
Global $UndoOK = False
Global $ShouldICreateMakeFORArmy
Global $FirstAdding = True
Global $DropPointCounter = 0
Global $MakeControlAfterSpell = 0
Global $Filenumber = 1
Global $infinity = 10000000000000
Global $g_sSaveLocation
Global $g_lSaveLocation
Global $TextToWrite
Global $GuiLastSpellPoint
Global $GuiLastArmyPoint

;~ gui Variables;;;;;;;;;;;;;;;;;;;;;;;
Global $h_hGUI_MakeCsv
Global $Sleep
Global $GetSleep1
Global $GetSleep2
Global $SleepInput1
Global $SleepInput2
Global $lblSleep
Global $lblSleep2
Global $ADDSleepCSV


Global $RadioWall1
Global $RadioWall2
Global $RadioEagle
Global $RadioInferno
Global $RadioXbow
Global $RadioWizzTower
Global $RadioAirDefense
Global $RadioTH
Global $RadioMortar
Global $RadioScatterShot
Global $CheckBuilding
Global $AddCSV
Global $Undo
Global $Start
Global $Exit
Global $SaveAndExit
Global $Reset
Global $Note
Global $OpenTrain
Global $TrainGui
Global $SaveTrain
Global $CMBTroops_Name
Global $AttackSide
Global $AttackSide2
Global $GrpFORbuildings
Global $PicInferno
Global $PicAir
Global $PicEagle
Global $PicTH
Global $PicMortar
Global $PicXbow
Global $PicXbow
Global $PicWTower
Global $PicGoldStorage
Global $PicElixirStorage
Global $PicDarkElixirStorage
Global $PicMine
Global $PicCollector
Global $PicDrill
Global $FileInput
Global $info_pic
Global $lblFile


Global $Inferno
Global $infernoPoint
Global $AirDef
Global $airpoint
Global $Eagle
Global $Scatter
Global $ScatterPoint
Global $TownHall
Global $Mortar
Global $eaglepoint
Global $Xbowpoint
Global $THPoint
Global $MortarPoint
Global $TownHallPoint
Global $LOG
Global $troops_pic
Global $troops_pic2
Global $a1
Global $a2
Global $a3
Global $a4
Global $a5
Global $a6
Global $a7
Global $a8
Global $a9
Global $a10
Global $aAddTile0
Global $aAddTile1
Global $aAddTile2





Global $b1
Global $b2
Global $b3
Global $b4
Global $b5
Global $b6
Global $b7
Global $b8
Global $b9
Global $b10
Global $bAddTile0
Global $bAddTile1
Global $bAddTile2

Global $sb1L1
Global $sb2L1
Global $sb3L1
Global $sb4L1
Global $sb5L1
Global $sb6L1
Global $sb7L1
Global $sb8L1
Global $sb9L1
Global $sb10L1

Global $sb1L2
Global $sb2L2
Global $sb3L2
Global $sb4L2
Global $sb5L2
Global $sb6L2
Global $sb7L2
Global $sb8L2
Global $sb9L2
Global $sb10L2

Global $sb1L3
Global $sb2L3
Global $sb3L3
Global $sb4L3
Global $sb5L3
Global $sb6L3
Global $sb7L3
Global $sb8L3
Global $sb9L3
Global $sb10L3

Global $c1
Global $c2
Global $c3
Global $c4
Global $c5
Global $c6
Global $c7
Global $c8
Global $c9
Global $c10
Global $cAddTile0
Global $cAddTile1
Global $cAddTile2

Global $d1
Global $d2
Global $d3
Global $d4
Global $d5
Global $d6
Global $d7
Global $d8
Global $d9
Global $d10
Global $dAddTile0
Global $dAddTile1
Global $dAddTile2

Global $e1
Global $e2
Global $e3
Global $e4
Global $e5
Global $e6
Global $e7
Global $e8
Global $e9
Global $e10
Global $eAddTile0
Global $eAddTile1
Global $eAddTile2

Global $Se1L1
Global $Se2L1
Global $Se3L1
Global $Se4L1
Global $Se5L1
Global $Se6L1
Global $Se7L1
Global $Se8L1
Global $Se9L1
Global $Se10L1

Global $Se1L2
Global $Se2L2
Global $Se3L2
Global $Se4L2
Global $Se5L2
Global $Se6L2
Global $Se7L2
Global $Se8L2
Global $Se9L2
Global $Se10L2

Global $Se1L3
Global $Se2L3
Global $Se3L3
Global $Se4L3
Global $Se5L3
Global $Se6L3
Global $Se7L3
Global $Se8L3
Global $Se9L3
Global $Se10L3

Global $Se1L4
Global $Se2L4
Global $Se3L4
Global $Se4L4
Global $Se5L4
Global $Se6L4
Global $Se7L4
Global $Se8L4
Global $Se9L4
Global $Se10L4

Global $Se1L5
Global $Se2L5
Global $Se3L5
Global $Se4L5
Global $Se5L5
Global $Se6L5
Global $Se7L5
Global $Se8L5
Global $Se9L5
Global $Se10L5

Global $Se1L6
Global $Se2L6
Global $Se3L6
Global $Se4L6
Global $Se5L6
Global $Se6L6
Global $Se7L6
Global $Se8L6
Global $Se9L6
Global $Se10L6

Global $Se1L7
Global $Se2L7
Global $Se3L7
Global $Se4L7
Global $Se5L7
Global $Se6L7
Global $Se7L7
Global $Se8L7
Global $Se9L7
Global $Se10L7

Global $Se1L8
Global $Se2L8
Global $Se3L8
Global $Se4L8
Global $Se5L8
Global $Se6L8
Global $Se7L8
Global $Se8L8
Global $Se9L8
Global $Se10L8

Global $Se1L9
Global $Se2L9
Global $Se3L9
Global $Se4L9
Global $Se5L9
Global $Se6L9
Global $Se7L9
Global $Se8L9
Global $Se9L9
Global $Se10L9

Global $Se1L10
Global $Se2L10
Global $Se3L10
Global $Se4L10
Global $Se5L10
Global $Se6L10
Global $Se7L10
Global $Se8L10
Global $Se9L10
Global $Se10L10

Global $Se1L11
Global $Se2L11
Global $Se3L11
Global $Se4L11
Global $Se5L11
Global $Se6L11
Global $Se7L11
Global $Se8L11
Global $Se9L11
Global $Se10L11

Global $Se1L12
Global $Se2L12
Global $Se3L12
Global $Se4L12
Global $Se5L12
Global $Se6L12
Global $Se7L12
Global $Se8L12
Global $Se9L12
Global $Se10L12

Global $Se1L13
Global $Se2L13
Global $Se3L13
Global $Se4L13
Global $Se5L13
Global $Se6L13
Global $Se7L13
Global $Se8L13
Global $Se9L13
Global $Se10L13

Global $Se1L14
Global $Se2L14
Global $Se3L14
Global $Se4L14
Global $Se5L14
Global $Se6L14
Global $Se7L14
Global $Se8L14
Global $Se9L14
Global $Se10L14

Global $Se1L15
Global $Se2L15
Global $Se3L15
Global $Se4L15
Global $Se5L15
Global $Se6L15
Global $Se7L15
Global $Se8L15
Global $Se9L15
Global $Se10L15

Global $Se1L16
Global $Se2L16
Global $Se3L16
Global $Se4L16
Global $Se5L16
Global $Se6L16
Global $Se7L16
Global $Se8L16
Global $Se9L16
Global $Se10L16

Global $Se1L17
Global $Se2L17
Global $Se3L17
Global $Se4L17
Global $Se5L17
Global $Se6L17
Global $Se7L17
Global $Se8L17
Global $Se9L17
Global $Se10L17



Global $f1
Global $f2
Global $f3
Global $f4
Global $f5
Global $f6
Global $f7
Global $f8
Global $f9
Global $f10
Global $fAddTile0
Global $fAddTile1
Global $fAddTile2

Global $Sf1L1
Global $Sf2L1
Global $Sf3L1
Global $Sf4L1
Global $Sf5L1
Global $Sf6L1
Global $Sf7L1
Global $Sf8L1
Global $Sf9L1
Global $Sf10L1

Global $Sf1L2
Global $Sf2L2
Global $Sf3L2
Global $Sf4L2
Global $Sf5L2
Global $Sf6L2
Global $Sf7L2
Global $Sf8L2
Global $Sf9L2
Global $Sf10L2

Global $Sf1L3
Global $Sf2L3
Global $Sf3L3
Global $Sf4L3
Global $Sf5L3
Global $Sf6L3
Global $Sf7L3
Global $Sf8L3
Global $Sf9L3
Global $Sf10L3

Global $Sf1L4
Global $Sf2L4
Global $Sf3L4
Global $Sf4L4
Global $Sf5L4
Global $Sf6L4
Global $Sf7L4
Global $Sf8L4
Global $Sf9L4
Global $Sf10L4

Global $Sf1L5
Global $Sf2L5
Global $Sf3L5
Global $Sf4L5
Global $Sf5L5
Global $Sf6L5
Global $Sf7L5
Global $Sf8L5
Global $Sf9L5
Global $Sf10L5

Global $Sf1L6
Global $Sf2L6
Global $Sf3L6
Global $Sf4L6
Global $Sf5L6
Global $Sf6L6
Global $Sf7L6
Global $Sf8L6
Global $Sf9L6
Global $Sf10L6

Global $Sf1L7
Global $Sf2L7
Global $Sf3L7
Global $Sf4L7
Global $Sf5L7
Global $Sf6L7
Global $Sf7L7
Global $Sf8L7
Global $Sf9L7
Global $Sf10L7

Global $Sf1L8
Global $Sf2L8
Global $Sf3L8
Global $Sf4L8
Global $Sf5L8
Global $Sf6L8
Global $Sf7L8
Global $Sf8L8
Global $Sf9L8
Global $Sf10L8

Global $Sf1L9
Global $Sf2L9
Global $Sf3L9
Global $Sf4L9
Global $Sf5L9
Global $Sf6L9
Global $Sf7L9
Global $Sf8L9
Global $Sf9L9
Global $Sf10L9

Global $Sf1L10
Global $Sf2L10
Global $Sf3L10
Global $Sf4L10
Global $Sf5L10
Global $Sf6L10
Global $Sf7L10
Global $Sf8L10
Global $Sf9L10
Global $Sf10L10

Global $Sf1L11
Global $Sf2L11
Global $Sf3L11
Global $Sf4L11
Global $Sf5L11
Global $Sf6L11
Global $Sf7L11
Global $Sf8L11
Global $Sf9L11
Global $Sf10L11

Global $Sf1L12
Global $Sf2L12
Global $Sf3L12
Global $Sf4L12
Global $Sf5L12
Global $Sf6L12
Global $Sf7L12
Global $Sf8L12
Global $Sf9L12
Global $Sf10L12

Global $Sf1L13
Global $Sf2L13
Global $Sf3L13
Global $Sf4L13
Global $Sf5L13
Global $Sf6L13
Global $Sf7L13
Global $Sf8L13
Global $Sf9L13
Global $Sf10L13

Global $Sf1L14
Global $Sf2L14
Global $Sf3L14
Global $Sf4L14
Global $Sf5L14
Global $Sf6L14
Global $Sf7L14
Global $Sf8L14
Global $Sf9L14
Global $Sf10L14

Global $Sf1L15
Global $Sf2L15
Global $Sf3L15
Global $Sf4L15
Global $Sf5L15
Global $Sf6L15
Global $Sf7L15
Global $Sf8L15
Global $Sf9L15
Global $Sf10L15

Global $Sf1L16
Global $Sf2L16
Global $Sf3L16
Global $Sf4L16
Global $Sf5L16
Global $Sf6L16
Global $Sf7L16
Global $Sf8L16
Global $Sf9L16
Global $Sf10L16

Global $Sf1L17
Global $Sf2L17
Global $Sf3L17
Global $Sf4L17
Global $Sf5L17
Global $Sf6L17
Global $Sf7L17
Global $Sf8L17
Global $Sf9L17
Global $Sf10L17



Global $g1
Global $g2
Global $g3
Global $g4
Global $g5
Global $g6
Global $g7
Global $g8
Global $g9
Global $g10
Global $gAddTile0
Global $gAddTile1
Global $gAddTile2

Global $h1
Global $h2
Global $h3
Global $h4
Global $h5
Global $h6
Global $h7
Global $h8
Global $h9
Global $h10
Global $hAddTile0
Global $hAddTile1
Global $hAddTile2



Global $group2
Global $AddCSV
Global $Undo


Global $PicSideBarbar
;~ function variables	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Global $SpellOnBuildingName
Global $TName = "Barb       "
Global $TType = "Army"
Global $SpellSideNumber = 0
Global $SpellSideType
Global $SideNumber = 0
Global $SideType
Global $AddTile
Global $DropPoint
Global $DropCommand
Global $ReadNote
Global $SplitTheNote
Dim $CSVNOTE[1]

Global $DropEnter =  "      |VECTOR_____|INDEX______|QTY_X_VECT_|TROOPNAME__|DELAY_DROP_|DELAYCHANGE|SLEEPAFTER_|___________|___________|" & @CRLF
    Global $ReCalc = "RECALC|           |           |           |           |           |           |           |           |           |" & @CRLF
Global $DropRemain=  "DROP  |P-M        |1-8        |1          |REMAIN     |50-70      |100        |50-100     |           |           |" & @CRLF
Global $endofCSV1 =  "      |------------------------------------------ This CSV created with ------------------------------------------|" & @CRLF
Global $endofCSV2 =  "      |--------------------------------------- CSV Maker that is made by -----------------------------------------|" & @CRLF
Global $endofCSV3 =  "      |----------------------------------------------- @ratakantez -----------------------------------------------|" & @CRLF
Global $endofCSV4 =  "      |------------------------------------------ www.mybot.run/forums -------------------------------------------|" & @CRLF

Global $MakeEnter =  "      |VECTOR_____|SIDE_______|DROP_POINTS|ADDTILES___|VERSUS_____|RANDOMX_PX_|RANDOMY_PX_|BUILDING___|___________|" & @CRLF
Global $MakeSpell
Global $Make_SF = "MAKE  |Z          |FRONT-RIGHT|10         |"
Global $Make_SE = "MAKE  |Y          |FRONT-LEFT |10         |"


Global $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |"

Global $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"

Global $chooseMake = 1 ;1=normal make 0=spell make


Global $ASideEnter = "      |EXTR. GOLD |EXTR.ELIXIR|EXTR. DARK |DEPO. GOLD |DEPO.ELIXIR|DEPO. DARK |TOWNHALL   |FORCED SIDE|           |"
Global $GetSideA
Global $BSideEnter = "      |EAGLE      |INFERNO    |XBOW       |WIZTOWER   |MORTAR     |AIRDEFENSE |SCATTER    |AIRSWEEPER |GEMBOX     |"
Global $GetSideB

Global $EagleCSV
Global $InfernoCSV
Global $XbowCSV
Global $WizzTowerCSV
Global $AirDefanceCSV
Global $MortarCSV
Global $ScatterShotCSV

Global $ExtrGoldCSV
Global $ExtrElixirCSV
Global $ExtrDarkCSV
Global $DepoDarkCSV
Global $DepoGoldCSV
Global $DepoElixirCSV
Global $TownHallCSV
Global $ForcedSideCSV


Global $GetInferno = 0
Global $infernoPoint = 0
Global $GetAirDefance = 0
Global $airpoint = 0
Global $GetScatterShot = 0
Global $ScatterShotpoint = 0
Global $GetEagle = 0
Global $eaglepoint = 0
Global $GetTH = 0
Global $THPoint = 0
Global $GetMortar = 0
Global $MortarPoint = 0
Global $GetXbow = 0
Global $XbowpointPoint = 0
Global $GetWizzTower = 0
Global $WTowerPoint = 0
Global $GetGoldStorage=0
Global $GoldStoragePoint = 0
Global $GetElixirStorage = 0
Global $ElixirStoragePoint = 0
Global $GetDarkElixirStorage = 0
Global $DarkElixirStoragePoint = 0
Global $GetMine = 0
Global $MinePoint = 0
Global $GetCollector = 0
Global $CollectorPoint = 0
Global $GetDrill = 0
Global $DrillPoint = 0
Global $GetForcedSide
Global $ForcedSidePoint



;Train
Global $TH13txtNumKing = 0
Global $TH13txtNumKingSecond = 0
Global $TH13txtNumQueen  = 0
Global $TH13txtNumQueenSecond  = 0
Global $TH13txtNumWarden  = 0
Global $TH13txtNumWardenSecond  = 0
Global $TH13txtNumRoyaleC  = 0
Global $TH13txtNumRoyaleCSecond  = 0
Global $TH12txtNumKing  = 0
Global $TH12txtNumKingSecond = 0
Global $TH12txtNumQueen = 0
Global $TH12txtNumQueenSecond = 0
Global $TH12txtNumWarden = 0
Global $TH12txtNumWardenSecond = 0
Global $TH12txtNumRoyaleC = 0
Global $TH12txtNumRoyaleCSecond = 0
Global $TH11txtNumKing = 0
Global $TH11txtNumKingSecond = 0
Global $TH11txtNumQueen = 0
Global $TH11txtNumQueenSecond = 0
Global $TH11txtNumWarden = 0
Global $TH11txtNumWardenSecond = 0
Global $TH11txtNumRoyaleC = 0
Global $TH11txtNumRoyaleCSecond = 0
Global $TH10txtNumKing = 0
Global $TH10txtNumKingSecond = 0
Global $TH10txtNumQueen = 0
Global $TH10txtNumQueenSecond = 0
Global $TH10txtNumWarden = 0
Global $TH10txtNumWardenSecond = 0
Global $TH10txtNumRoyaleC = 0
Global $TH10txtNumRoyaleCSecond = 0
Global $TH9txtNumKing = 0
Global $TH9txtNumKingSecond = 0
Global $TH9txtNumQueen = 0
Global $TH9txtNumQueenSecond = 0
Global $TH9txtNumWarden = 0
Global $TH9txtNumWardenSecond = 0
Global $TH9txtNumRoyaleC = 0
Global $TH9txtNumRoyaleCSecond = 0
Global $TH8txtNumKing = 0
Global $TH8txtNumKingSecond = 0
Global $TH8txtNumQueen = 0
Global $TH8txtNumQueenSecond = 0
Global $TH8txtNumWarden = 0
Global $TH8txtNumWardenSecond = 0
Global $TH8txtNumRoyaleC = 0
Global $TH8txtNumRoyaleCSecond = 0
Global $TH7txtNumKing = 0
Global $TH7txtNumKingSecond = 0
Global $TH7txtNumQueen = 0
Global $TH7txtNumQueenSecond = 0
Global $TH7txtNumWarden = 0
Global $TH7txtNumWardenSecond = 0
Global $TH7txtNumRoyaleC = 0
Global $TH7txtNumRoyaleCSecond = 0
Global $TH6txtNumKing = 0
Global $TH6txtNumKingSecond = 0
Global $TH6txtNumQueen = 0
Global $TH6txtNumQueenSecond = 0
Global $TH6txtNumWarden = 0
Global $TH6txtNumWardenSecond = 0
Global $TH6txtNumRoyaleC = 0
Global $TH6txtNumRoyaleCSecond = 0

Global $TH6txtNumBarbarian = 0
Global $TH7txtNumBarbarian = 0
Global $TH8txtNumBarbarian = 0
Global $TH9txtNumBarbarian = 0
Global $TH10txtNumBarbarian = 0
Global $TH11txtNumBarbarian = 0
Global $TH12txtNumBarbarian = 0
Global $TH13txtNumBarbarian = 0
Global $TH6txtNumArcher = 0
Global $TH7txtNumArcher = 0
Global $TH8txtNumArcher = 0
Global $TH9txtNumArcher = 0
Global $TH10txtNumArcher = 0
Global $TH11txtNumArcher = 0
Global $TH12txtNumArcher = 0
Global $TH13txtNumArcher = 0
Global $TH6txtNumGiant = 0
Global $TH7txtNumGiant = 0
Global $TH8txtNumGiant = 0
Global $TH9txtNumGiant = 0
Global $TH10txtNumGiant = 0
Global $TH11txtNumGiant = 0
Global $TH12txtNumGiant = 0
Global $TH13txtNumGiant = 0
Global $TH6txtNumGoblin = 0
Global $TH7txtNumGoblin = 0
Global $TH8txtNumGoblin = 0
Global $TH9txtNumGoblin = 0
Global $TH10txtNumGoblin = 0
Global $TH11txtNumGoblin = 0
Global $TH12txtNumGoblin = 0
Global $TH13txtNumGoblin = 0
Global $TH6txtNumWall = 0
Global $TH7txtNumWall = 0
Global $TH8txtNumWall = 0
Global $TH9txtNumWall = 0
Global $TH10txtNumWall = 0
Global $TH11txtNumWall = 0
Global $TH12txtNumWall = 0
Global $TH13txtNumWall = 0
Global $TH6txtNumBall = 0
Global $TH7txtNumBall = 0
Global $TH8txtNumBall = 0
Global $TH9txtNumBall = 0
Global $TH10txtNumBall = 0
Global $TH11txtNumBall = 0
Global $TH12txtNumBall = 0
Global $TH13txtNumBall = 0
Global $TH6txtNumWiza = 0
Global $TH7txtNumWiza = 0
Global $TH8txtNumWiza = 0
Global $TH9txtNumWiza = 0
Global $TH10txtNumWiza = 0
Global $TH11txtNumWiza = 0
Global $TH12txtNumWiza = 0
Global $TH13txtNumWiza = 0
Global $TH6txtNumHeal = 0
Global $TH7txtNumHeal = 0
Global $TH8txtNumHeal = 0
Global $TH9txtNumHeal = 0
Global $TH10txtNumHeal = 0
Global $TH11txtNumHeal = 0
Global $TH12txtNumHeal = 0
Global $TH13txtNumHeal = 0
Global $TH6txtNumDrag = 0
Global $TH7txtNumDrag = 0
Global $TH8txtNumDrag = 0
Global $TH9txtNumDrag = 0
Global $TH10txtNumDrag = 0
Global $TH11txtNumDrag = 0
Global $TH12txtNumDrag = 0
Global $TH13txtNumDrag = 0
Global $TH6txtNumPekk = 0
Global $TH7txtNumPekk = 0
Global $TH8txtNumPekk = 0
Global $TH9txtNumPekk = 0
Global $TH10txtNumPekk = 0
Global $TH11txtNumPekk = 0
Global $TH12txtNumPekk = 0
Global $TH13txtNumPekk = 0
Global $TH6txtNumBabyDragon = 0
Global $TH7txtNumBabyDragon = 0
Global $TH8txtNumBabyDragon = 0
Global $TH9txtNumBabyDragon = 0
Global $TH10txtNumBabyDragon = 0
Global $TH11txtNumBabyDragon = 0
Global $TH12txtNumBabyDragon = 0
Global $TH13txtNumBabyDragon = 0
Global $TH6txtNumMiner = 0
Global $TH7txtNumMiner = 0
Global $TH8txtNumMiner = 0
Global $TH9txtNumMiner = 0
Global $TH10txtNumMiner = 0
Global $TH11txtNumMiner = 0
Global $TH12txtNumMiner = 0
Global $TH13txtNumMiner = 0
Global $TH6txtNumEdrag = 0
Global $TH7txtNumEdrag = 0
Global $TH8txtNumEdrag = 0
Global $TH9txtNumEdrag = 0
Global $TH10txtNumEdrag = 0
Global $TH11txtNumEdrag = 0
Global $TH12txtNumEdrag = 0
Global $TH13txtNumEdrag = 0
Global $TH6txtNumYeti = 0
Global $TH7txtNumYeti = 0
Global $TH8txtNumYeti = 0
Global $TH9txtNumYeti = 0
Global $TH10txtNumYeti = 0
Global $TH11txtNumYeti = 0
Global $TH12txtNumYeti = 0
Global $TH13txtNumYeti = 0
Global $TH6txtNumMini = 0
Global $TH7txtNumMini = 0
Global $TH8txtNumMini = 0
Global $TH9txtNumMini = 0
Global $TH10txtNumMini = 0
Global $TH11txtNumMini = 0
Global $TH12txtNumMini = 0
Global $TH13txtNumMini = 0
Global $TH6txtNumHogs = 0
Global $TH7txtNumHogs = 0
Global $TH8txtNumHogs = 0
Global $TH9txtNumHogs = 0
Global $TH10txtNumHogs = 0
Global $TH11txtNumHogs = 0
Global $TH12txtNumHogs = 0
Global $TH13txtNumHogs = 0
Global $TH6txtNumValkyre = 0
Global $TH7txtNumValkyre = 0
Global $TH8txtNumValkyre = 0
Global $TH9txtNumValkyre = 0
Global $TH10txtNumValkyre = 0
Global $TH11txtNumValkyre = 0
Global $TH12txtNumValkyre = 0
Global $TH13txtNumValkyre = 0
Global $TH6txtNumGolem = 0
Global $TH7txtNumGolem = 0
Global $TH8txtNumGolem = 0
Global $TH9txtNumGolem = 0
Global $TH10txtNumGolem = 0
Global $TH11txtNumGolem = 0
Global $TH12txtNumGolem = 0
Global $TH13txtNumGolem = 0
Global $TH6txtNumWitch = 0
Global $TH7txtNumWitch = 0
Global $TH8txtNumWitch = 0
Global $TH9txtNumWitch = 0
Global $TH10txtNumWitch = 0
Global $TH11txtNumWitch = 0
Global $TH12txtNumWitch = 0
Global $TH13txtNumWitch = 0
Global $TH6txtNumLava = 0
Global $TH7txtNumLava = 0
Global $TH8txtNumLava = 0
Global $TH9txtNumLava = 0
Global $TH10txtNumLava = 0
Global $TH11txtNumLava = 0
Global $TH12txtNumLava = 0
Global $TH13txtNumLava = 0
Global $TH6txtNumBowler = 0
Global $TH7txtNumBowler = 0
Global $TH8txtNumBowler = 0
Global $TH9txtNumBowler = 0
Global $TH10txtNumBowler = 0
Global $TH11txtNumBowler = 0
Global $TH12txtNumBowler = 0
Global $TH13txtNumBowler = 0
Global $TH6txtNumIceGolem = 0
Global $TH7txtNumIceGolem = 0
Global $TH8txtNumIceGolem = 0
Global $TH9txtNumIceGolem = 0
Global $TH10txtNumIceGolem = 0
Global $TH11txtNumIceGolem = 0
Global $TH12txtNumIceGolem = 0
Global $TH13txtNumIceGolem = 0
Global $TH6txtNumLSpell = 0 = 0
Global $TH7txtNumLSpell = 0
Global $TH8txtNumLSpell = 0
Global $TH9txtNumLSpell = 0
Global $TH10txtNumLSpell = 0
Global $TH11txtNumLSpell = 0
Global $TH12txtNumLSpell = 0
Global $TH13txtNumLSpell = 0
Global $TH6txtNumHSpell = 0
Global $TH7txtNumHSpell = 0
Global $TH8txtNumHSpell = 0
Global $TH9txtNumHSpell = 0
Global $TH10txtNumHSpell = 0
Global $TH11txtNumHSpell = 0
Global $TH12txtNumHSpell = 0
Global $TH13txtNumHSpell = 0
Global $TH6txtNumRSpell = 0
Global $TH7txtNumRSpell = 0
Global $TH8txtNumRSpell = 0
Global $TH9txtNumRSpell = 0
Global $TH10txtNumRSpell = 0
Global $TH11txtNumRSpell = 0
Global $TH12txtNumRSpell = 0
Global $TH13txtNumRSpell = 0
Global $TH6txtNumJSpell = 0
Global $TH7txtNumJSpell = 0
Global $TH8txtNumJSpell = 0
Global $TH9txtNumJSpell = 0
Global $TH10txtNumJSpell = 0
Global $TH11txtNumJSpell = 0
Global $TH12txtNumJSpell = 0
Global $TH13txtNumJSpell = 0
Global $TH6txtNumFSpell = 0
Global $TH7txtNumFSpell = 0
Global $TH8txtNumFSpell = 0
Global $TH9txtNumFSpell = 0
Global $TH10txtNumFSpell = 0
Global $TH11txtNumFSpell = 0
Global $TH12txtNumFSpell = 0
Global $TH13txtNumFSpell = 0
Global $TH6txtNumCSpell = 0
Global $TH7txtNumCSpell = 0
Global $TH8txtNumCSpell = 0
Global $TH9txtNumCSpell = 0
Global $TH10txtNumCSpell = 0
Global $TH11txtNumCSpell = 0
Global $TH12txtNumCSpell = 0
Global $TH13txtNumCSpell = 0
Global $TH6txtNumPSpell = 0
Global $TH7txtNumPSpell = 0
Global $TH8txtNumPSpell = 0
Global $TH9txtNumPSpell = 0
Global $TH10txtNumPSpell = 0
Global $TH11txtNumPSpell = 0
Global $TH12txtNumPSpell = 0
Global $TH13txtNumPSpell = 0
Global $TH6txtNumESpell = 0
Global $TH7txtNumESpell = 0
Global $TH8txtNumESpell = 0
Global $TH9txtNumESpell = 0
Global $TH10txtNumESpell = 0
Global $TH11txtNumESpell = 0
Global $TH12txtNumESpell = 0
Global $TH13txtNumESpell = 0
Global $TH6txtNumHaSpell = 0
Global $TH7txtNumHaSpell = 0
Global $TH8txtNumHaSpell = 0
Global $TH9txtNumHaSpell = 0
Global $TH10txtNumHaSpell = 0
Global $TH11txtNumHaSpell = 0
Global $TH12txtNumHaSpell = 0
Global $TH13txtNumHaSpell = 0
Global $TH6txtNumSkSpell = 0
Global $TH7txtNumSkSpell = 0
Global $TH8txtNumSkSpell = 0
Global $TH9txtNumSkSpell = 0
Global $TH10txtNumSkSpell = 0
Global $TH11txtNumSkSpell = 0
Global $TH12txtNumSkSpell = 0
Global $TH13txtNumSkSpell = 0
Global $TH6txtNumBaSpell = 0
Global $TH7txtNumBaSpell = 0
Global $TH8txtNumBaSpell = 0
Global $TH9txtNumBaSpell = 0
Global $TH10txtNumBaSpell = 0
Global $TH11txtNumBaSpell = 0
Global $TH12txtNumBaSpell = 0
Global $TH13txtNumBaSpell = 0
Global $TH6txtNumBattleB = 0
Global $TH7txtNumBattleB = 0
Global $TH8txtNumBattleB = 0
Global $TH9txtNumBattleB = 0
Global $TH10txtNumBattleB = 0
Global $TH11txtNumBattleB = 0
Global $TH12txtNumBattleB = 0
Global $TH13txtNumBattleB = 0
Global $TH6txtNumWallw = 0
Global $TH7txtNumWallw = 0
Global $TH8txtNumWallw = 0
Global $TH9txtNumWallw = 0
Global $TH10txtNumWallw = 0
Global $TH11txtNumWallw = 0
Global $TH12txtNumWallw = 0
Global $TH13txtNumWallw = 0
Global $TH6txtNumStoneS = 0
Global $TH7txtNumStoneS = 0
Global $TH8txtNumStoneS = 0
Global $TH9txtNumStoneS = 0
Global $TH10txtNumStoneS = 0
Global $TH11txtNumStoneS = 0
Global $TH12txtNumStoneS = 0
Global $TH13txtNumStoneS = 0
Global $TH6txtNumSiegeB = 0
Global $TH7txtNumSiegeB = 0
Global $TH8txtNumSiegeB = 0
Global $TH9txtNumSiegeB = 0
Global $TH10txtNumSiegeB = 0
Global $TH11txtNumSiegeB = 0
Global $TH12txtNumSiegeB = 0
Global $TH13txtNumSiegeB = 0



Global $6King = ""
Global $7King = ""
Global $8King = ""
Global $9King = ""
Global $10King = ""
Global $11King = ""
Global $12King = ""
Global $13King = ""

Global $6Queen = ""
Global $7Queen = ""
Global $8Queen = ""
Global $9Queen = ""
Global $10Queen = ""
Global $11Queen = ""
Global $12Queen = ""
Global $13Queen = ""

Global $6Warden = ""
Global $7Warden = ""
Global $8Warden = ""
Global $9Warden = ""
Global $10Warden = ""
Global $11Warden = ""
Global $12Warden = ""
Global $13Warden = ""

Global $6RoyaleC = ""
Global $7RoyaleC = ""
Global $8RoyaleC = ""
Global $9RoyaleC = ""
Global $10RoyaleC = ""
Global $11RoyaleC = ""
Global $12RoyaleC = ""
Global $13RoyaleC = ""


Global $6Barbarian = ""
Global $7Barbarian = ""
Global $8Barbarian = ""
Global $9Barbarian = ""
Global $10Barbarian = ""
Global $11Barbarian = ""
Global $12Barbarian = ""
Global $13Barbarian = ""
Global $6Arher = ""
Global $7Arher = ""
Global $8Arher = ""
Global $9Arher = ""
Global $10Arher = ""
Global $11Arher = ""
Global $12Arher = ""
Global $13Arher = ""
Global $6Giant = ""
Global $7Giant = ""
Global $8Giant = ""
Global $9Giant = ""
Global $10Giant = ""
Global $11Giant = ""
Global $12Giant = ""
Global $13Giant = ""
Global $6Goblin = ""
Global $7Goblin = ""
Global $8Goblin = ""
Global $9Goblin = ""
Global $10Goblin = ""
Global $11Goblin = ""
Global $12Goblin = ""
Global $13Goblin = ""
Global $6Wall = ""
Global $7Wall = ""
Global $8Wall = ""
Global $9Wall = ""
Global $10Wall = ""
Global $11Wall = ""
Global $12Wall = ""
Global $13Wall = ""
Global $6Ball = ""
Global $7Ball = ""
Global $8Ball = ""
Global $9Ball = ""
Global $10Ball = ""
Global $11Ball = ""
Global $12Ball = ""
Global $13Ball = ""
Global $6Wiza = ""
Global $7Wiza = ""
Global $8Wiza = ""
Global $9Wiza = ""
Global $10Wiza = ""
Global $11Wiza = ""
Global $12Wiza = ""
Global $13Wiza = ""
Global $6Heal = ""
Global $7Heal = ""
Global $8Heal = ""
Global $9Heal = ""
Global $10Heal = ""
Global $11Heal = ""
Global $12Heal = ""
Global $13Heal = ""
Global $6Drag = ""
Global $7Drag = ""
Global $8Drag = ""
Global $9Drag = ""
Global $10Drag = ""
Global $11Drag = ""
Global $12Drag = ""
Global $13Drag = ""
Global $6Pekk = ""
Global $7Pekk = ""
Global $8Pekk = ""
Global $9Pekk = ""
Global $10Pekk = ""
Global $11Pekk = ""
Global $12Pekk = ""
Global $13Pekk = ""
Global $6BabyDragon = ""
Global $7BabyDragon = ""
Global $8BabyDragon = ""
Global $9BabyDragon = ""
Global $10BabyDragon = ""
Global $11BabyDragon = ""
Global $12BabyDragon = ""
Global $13BabyDragon = ""
Global $6Miner = ""
Global $7Miner = ""
Global $8Miner = ""
Global $9Miner = ""
Global $10Miner = ""
Global $11Miner = ""
Global $12Miner = ""
Global $13Miner = ""
Global $6EDrag = ""
Global $7EDrag = ""
Global $8EDrag = ""
Global $9EDrag = ""
Global $10EDrag = ""
Global $11EDrag = ""
Global $12EDrag = ""
Global $13EDrag = ""
Global $6Yeti = ""
Global $7Yeti = ""
Global $8Yeti = ""
Global $9Yeti = ""
Global $10Yeti = ""
Global $11Yeti = ""
Global $12Yeti = ""
Global $13Yeti = ""
Global $6Mini = ""
Global $7Mini = ""
Global $8Mini = ""
Global $9Mini = ""
Global $10Mini = ""
Global $11Mini = ""
Global $12Mini = ""
Global $13Mini = ""
Global $6Hogs = ""
Global $7Hogs = ""
Global $8Hogs = ""
Global $9Hogs = ""
Global $10Hogs = ""
Global $11Hogs = ""
Global $12Hogs = ""
Global $13Hogs = ""
Global $6Valkyre = ""
Global $7Valkyre = ""
Global $8Valkyre = ""
Global $9Valkyre = ""
Global $10Valkyre = ""
Global $11Valkyre = ""
Global $12Valkyre = ""
Global $13Valkyre = ""
Global $6Golem = ""
Global $7Golem = ""
Global $8Golem = ""
Global $9Golem = ""
Global $10Golem = ""
Global $11Golem = ""
Global $12Golem = ""
Global $13Golem = ""
Global $6Witch = ""
Global $7Witch = ""
Global $8Witch = ""
Global $9Witch = ""
Global $10Witch = ""
Global $11Witch = ""
Global $12Witch = ""
Global $13Witch = ""
Global $6Lava = ""
Global $7Lava = ""
Global $8Lava = ""
Global $9Lava = ""
Global $10Lava = ""
Global $11Lava = ""
Global $12Lava = ""
Global $13Lava = ""
Global $6Bowler = ""
Global $7Bowler = ""
Global $8Bowler = ""
Global $9Bowler = ""
Global $10Bowler = ""
Global $11Bowler = ""
Global $12Bowler = ""
Global $13Bowler = ""
Global $6IceGolem = ""
Global $7IceGolem = ""
Global $8IceGolem = ""
Global $9IceGolem = ""
Global $10IceGolem = ""
Global $11IceGolem = ""
Global $12IceGolem = ""
Global $13IceGolem = ""
Global $6LSpell = ""
Global $7LSpell = ""
Global $8LSpell = ""
Global $9LSpell = ""
Global $10LSpell = ""
Global $11LSpell = ""
Global $12LSpell = ""
Global $13LSpell = ""
Global $6HSpell = ""
Global $7HSpell = ""
Global $8HSpell = ""
Global $9HSpell = ""
Global $10HSpell = ""
Global $11HSpell = ""
Global $12HSpell = ""
Global $13HSpell = ""
Global $6RSpell = ""
Global $7RSpell = ""
Global $8RSpell = ""
Global $9RSpell = ""
Global $10RSpell = ""
Global $11RSpell = ""
Global $12RSpell = ""
Global $13RSpell = ""
Global $6JSpell = ""
Global $7JSpell = ""
Global $8JSpell = ""
Global $9JSpell = ""
Global $10JSpell = ""
Global $11JSpell = ""
Global $12JSpell = ""
Global $13JSpell = ""
Global $6FSpell = ""
Global $7FSpell = ""
Global $8FSpell = ""
Global $9FSpell = ""
Global $10FSpell = ""
Global $11FSpell = ""
Global $12FSpell = ""
Global $13FSpell = ""
Global $6PSpell = ""
Global $7PSpell = ""
Global $8PSpell = ""
Global $9PSpell = ""
Global $10PSpell = ""
Global $11PSpell = ""
Global $12PSpell = ""
Global $13PSpell = ""
Global $6CSpell = ""
Global $7CSpell = ""
Global $8CSpell = ""
Global $9CSpell = ""
Global $10CSpell = ""
Global $11CSpell = ""
Global $12CSpell = ""
Global $13CSpell = ""
Global $6ESpell = ""
Global $7ESpell = ""
Global $8ESpell = ""
Global $9ESpell = ""
Global $10ESpell = ""
Global $11ESpell = ""
Global $12ESpell = ""
Global $13ESpell = ""
Global $6HaSpell = ""
Global $7HaSpell = ""
Global $8HaSpell = ""
Global $9HaSpell = ""
Global $10HaSpell = ""
Global $11HaSpell = ""
Global $12HaSpell = ""
Global $13HaSpell = ""
Global $6SkSpell = ""
Global $7SkSpell = ""
Global $8SkSpell = ""
Global $9SkSpell = ""
Global $10SkSpell = ""
Global $11SkSpell = ""
Global $12SkSpell = ""
Global $13SkSpell = ""
Global $6BaSpell = ""
Global $7BaSpell = ""
Global $8BaSpell = ""
Global $9BaSpell = ""
Global $10BaSpell = ""
Global $11BaSpell = ""
Global $12BaSpell = ""
Global $13BaSpell = ""
Global $6BattleB = ""
Global $7BattleB = ""
Global $8BattleB = ""
Global $9BattleB = ""
Global $10BattleB = ""
Global $11BattleB = ""
Global $12BattleB = ""
Global $13BattleB = ""
Global $6Wallw = ""
Global $7Wallw = ""
Global $8Wallw = ""
Global $9Wallw = ""
Global $10Wallw = ""
Global $11Wallw = ""
Global $12Wallw = ""
Global $13Wallw = ""
Global $6StoneS = ""
Global $7StoneS = ""
Global $8StoneS = ""
Global $9StoneS = ""
Global $10StoneS = ""
Global $11StoneS = ""
Global $12StoneS = ""
Global $13StoneS = ""
Global $6SiegeB = ""
Global $7SiegeB = ""
Global $8SiegeB = ""
Global $9SiegeB = ""
Global $10SiegeB = ""
Global $11SiegeB = ""
Global $12SiegeB = ""
Global $13SiegeB = ""
Global $TrainBarb = ""
Global $TrainArcher = ""
Global $TrainGaint = ""
Global $TrainGoblin = ""
Global $TrainWallB = ""
Global $TrainBalloon = ""
Global $TrainWizard = ""
Global $TrainHealer = ""
Global $TrainDragon = ""
Global $TrainPekka= ""
Global $TrainBabyDragon= ""
Global $TrainMiner= ""
Global $TrainEDrag= ""
Global $TrainYeti= ""
Global $TrainMini= ""
Global $TrainHogsRider= ""
Global $TrainValkyre= ""
Global $TrainGolem= ""
Global $TrainWitch= ""
Global $TrainLava= ""
Global $TrainBowler= ""
Global $TrainIceGolem= ""

Global $TrainLSpell= ""
Global $TrainHSpell= ""
Global $TrainRSpell= ""
Global $TrainJSpell= ""
Global $TrainFSpell= ""
Global $TrainPSpell= ""
Global $TrainCSpell= ""
Global $TrainESpell= ""
Global $TrainHaSpell= ""
Global $TrainSkSpell= ""
Global $TrainBaSpell= ""
Global $TrainBattleB= ""
Global $TrainWallw= ""
Global $TrainStoneS= ""
Global $TrainSiegeB= ""
Global $TrainKing = ""
Global $TrainQueen = ""
Global $TrainWarden = ""
Global $TrainRoyaleC = ""

Global $TrainCSVWrite = ""
Global $TrainEnter = "      |_TROOPNAME_|____TH06___|____TH07___|____TH08___|____TH09___|____TH10___|____TH11___|____TH12___|____TH13___|"

