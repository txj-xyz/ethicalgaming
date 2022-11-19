#Include, ..\modules\variables.ahk
#Include, ..\modules\coordinates.ahk
#Include, ..\modules\functions.ahk
SendMode Input
#MaxThreadsPerHotkey 2
#SingleInstance Force

F1::
  MsgBox,
  (
    F1 = Help Dialog
    F2 = Extreme Prayers
    F3 = Summoning Taverly
    F4 = Vuln Bombs
    F5 = AFK Arch Glacor
    LAlt = Reload Script
  )
return

F2:: ; Extreme Prayers
Loop {
    sleep, % ran(10, 100)
    CoordClick("Bank") ; click bank
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


F3:: ; ControlClick Summoning
Loop, {
    Sleep, 600
    ; Trade
    CoordLClick("Trade")
    Sleep, 1200
    ; CoordLClick("Item")
    ; Sleep, 1100
    CoordRClick("ShopSlot1")
    Sleep, 200
    CoordLClick("ShopSlot2")
    ; CoordLClick("Max")
    ; CoordLClick("Buy")  
    SendInput, {Escape down}
    Sleep, ran(1, 10)
    SendInput, {Escape up}
    Sleep, ran(100, 200)
    CoordLClick("Obby")
    Sleep, 1100
    SendInput, {Space down}
    Sleep, ran(1, 10)
    SendInput, {Space up}
    Sleep, 3500
    CoordLClick("Depo")
    Sleep, 1200
    CoordRClick("PouchFirst")
    Sleep, 600
    CoordLClick("PouchSecond")
    SendInput, {Escape down}
    Sleep, ran(1, 10)
    SendInput, {Escape up}
}
return

F4:: ; vuln bombs
  Loop {
    sleep, % ran(10, 100)
    CoordClick("Bank") ; click bank
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