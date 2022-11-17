#Include, ..\modules\variables.ahk
#Include, ..\modules\functions.ahk
SendMode Input
#MaxThreadsPerHotkey 2
#SingleInstance Force


; These coords change per monitor / interface scaling
; 2560 x 1440 @ 200% interface scaling for the below
global Shop := Object()
Shop.Trade := Object("X1", 1284, "Y1", 484, "X2", 1284, "Y2", 484)
Shop.Item := Object("X1", 1157, "Y1", 776, "X2", 1157, "Y2", 776)
Shop.Max := Object("X1", 1735, "Y1", 894, "X2", 1735, "Y2", 894)
Shop.Buy := Object("X1", 1714, "Y1", 988, "X2", 1714, "Y2", 988)
Shop.Obby := Object("X1", 1377, "Y1", 534, "X2", 1377, "Y2", 534)
Shop.Depo := Object("X1", 1281, "Y1", 527, "X2", 1281, "Y2", 527)
Shop.PouchFirst := Object("X1", 1085, "Y1", 539, "X2", 1085, "Y2", 539)
Shop.PouchSecond := Object("X1", 1070, "Y1", 685, "X2", 1070, "Y2", 685)
Shop.ShopSlot1 := Object("X1", 1158, "Y1", 787, "X2", 1158, "Y2", 787)
Shop.ShopSlot2 := Object("X1", 1142, "Y1", 994, "X2", 1142, "Y2", 994)

Q::
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

; Escape to terminate the app.
LAlt::
Reload
Return