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
F6 = AFK Hunter Proteans
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

F6:: ; NeverLogout + Click Proteans
  Loop 
{ 
    Random, IntSleep, 53565, 153462 
    Sleep, %IntSleep% 

    Random, IntKey, 0,100

    if IntKey between 0 and 9
        {
          CoordClick("HunterProteans", "L")
          Sleep, 30
          ControlSend,,{Up down},RuneScape
          Random, IntSend, 183, 515
          Sleep, %IntSend%
          ControlSend,,{Up up},RuneScape
        }
    if IntKey between 10 and 23
        {
          CoordClick("HunterProteans", "L")
          Sleep, 30
          ControlSend,,{Down down},RuneScape
          Random, IntSend, 312, 634
          Sleep, %IntSend%
          ControlSend,,{Down up},RuneScape
        }
    if IntKey between 24 and 59
        {
          CoordClick("HunterProteans", "L")
          Sleep, 30
          ControlSend,,{Left down},RuneScape
          Random, IntSend, 354, 1176
          Sleep, %IntSend%
          ControlSend,,{Left up},RuneScape
        }
    if IntKey between 60 and 100
        {
          CoordClick("HunterProteans", "L")
          Sleep, 30
          ControlSend,,{Right down},RuneScape
          Random, IntSend, 573, 1343
          Sleep, %IntSend%
          ControlSend,,{Right up},RuneScape
        }
}
return

; Escape to terminate the app.
; LAlt::Reload
; Return