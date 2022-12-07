#Include, ..\components\variables.ahk
#Include, ..\components\coordinates.ahk
#Include, ..\components\functions.ahk
SendMode Input
#MaxThreadsPerHotkey 2
#SingleInstance Force

F1::
  MsgBox,
(
F1 = Help Dialog
F2 = Extreme Prayers
F4 = Vuln Bombs
F5 = AFK Arch Glacor
LAlt = Reload Script
)
return

F2:: ; Extreme Prayers
Loop {
    sleep, % ran(10, 100)
    ; CoordClick("Bank") ; click bank
    sleep, % ran(1200, 4501)
    ControlSend,,{2 down},RuneScape ;load preset
    sleep, % ran(10, 100)
    ControlSend,,{2 up},RuneScape
    sleep, % ran(1253, 1487)
    ControlSend,,{2 down},RuneScape		;make unf potions
    sleep, % ran(10, 100)
    ControlSend,,{2 up},RuneScape
    sleep, % ran(1200, 1800)
    ControlSend,,{Space down},RuneScape
    sleep, % ran(10, 100)
    ControlSend,,{Space up},RuneScape
    sleep, % ran(15000, 16000)
}
Return


F4:: ; vuln bombs
  Loop {
    sleep, % ran(10, 100)
    CoordClick("Bank", "L") ; click bank
    sleep, % ran(1023, 1908)
    ControlSend,,{2 down},RuneScape ;load preset
    sleep, % ran(10, 100)
    ControlSend,,{2 up},RuneScape
    sleep, % ran(1253, 1487)
    ControlSend,,{2 down},RuneScape		;make unf potions
    sleep, % ran(10, 100)
    ControlSend,,{2 up},RuneScape
    sleep, % ran(1200, 1800)
    ControlSend,,{Space down},RuneScape
    sleep, % ran(10, 100)
    ControlSend,,{Space up},RuneScape
    sleep, % ran(14000, 16000)
  }
return

F5:: ; AFK Arch Glacor
  Loop {
    ControlSend,,{Space down},RuneScape
    sleep, % ran(10, 100)
    ControlSend,,{Space up},RuneScape
    sleep, % ran(15000, 45000)
  }
return

; Escape to terminate the app.
LAlt::Reload
Return