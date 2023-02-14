#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
; SendMode Input
#IfWinActive RuneScape
  Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\XP.png

  F1::
    MsgBox,
(
F1 = Help Dialog
F2 = Potion (3 ingredient)
F4 = Vuln Bombs
F5 = AFK Arch Glacor
F6 = Click Proteans
F7 = AFK Clicking
)
  return

  F2:: ; Potion (3 ingredient)
    Loop {
      sleep, % ran(10, 100)
      CoordClick("MaxBank", "L") ; click bank
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
      sleep, % ran(10000, 11000)
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
    CoordClick("FirstSlot", "L")
    Loop
    {
      Random, IntSleep, 1230, 5091
      Sleep, %IntSleep%

      Random, IntKey, 0,100

      if IntKey between 0 and 9
      {
        CoordClick("FirstSlot", "L")
      }
      if IntKey between 10 and 23
      {
        CoordClick("FirstSlot", "L")
      }
      if IntKey between 24 and 59
      {
        CoordClick("FirstSlot", "L")
      }
      if IntKey between 60 and 100
      {
        CoordClick("FirstSlot", "L")
      }
    }
  return

  F7:: ; AFK Clicking
    LeftClick()
    Loop
    {
      Random, IntSleep, 1230, 5091
      Sleep, %IntSleep%

      Random, IntKey, 0,100

      if IntKey between 0 and 9
      {
        LeftClick()
      }
      if IntKey between 10 and 23
      {
        LeftClick()
      }
      if IntKey between 24 and 59
      {
        LeftClick()
      }
      if IntKey between 60 and 100
      {
        LeftClick()
      }
    }
  return

; Escape to terminate the app.
LAlt::ExitApp
Return