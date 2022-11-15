; #NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2
#SingleInstance Force

global Coords := Object()
Coords.Bank := Object("X1", 1225, "Y1", 468, "X2", 1289, "Y2", 634)

; Function for returning a random number between 2 variables (int)
ran(min,max)
{
  random, ran, min, max
  return ran
}

; Function helper for Left clicking coords
CoordClick(Name){
  Random, coordOutX, Coords[Name].X1, Coords[Name].X2
  Random, coordOutY, Coords[Name].Y1, Coords[Name].Y2
  ControlClick, x%coordOutX% y%coordOutY%, RuneScape
}

F7:: ;vuln bombs
  Loop {
    sleep, % ran(10, 100)
    CoordClick("Bank") ; click bank
    sleep, % ran(918, 1631)
    ControlSend,,{2 down},RuneScape ;load preset
    sleep, % ran(10, 100)
    ControlSend,,{2 up},RuneScape
    sleep, % ran(1253, 1487)
    ControlSend,,{2 down},RuneScape		;make unf potions
    sleep, % ran(10, 100)
    ControlSend,,{2 up},RuneScape
    sleep, % ran(1200, 1800)
    ControlSend,,{Space down},RuneScape
    sleep, $ ran (10, 100)
    ControlSend,,{Space up},RuneScape
    sleep, % ran(14000, 16000)
  }
return