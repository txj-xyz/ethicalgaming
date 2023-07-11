#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
#IfWinActive RuneScape
SendMode Input

; ---------------------------------------------------
; --------------- Configuration ---------------------
; ---------------------------------------------------

; Hybridding keybinds configuration
main_hand := "k"
off_hand := "l"
shield := "o"



; Change the bind below to assign equipping Mainhand + Offhand
F22::EquipDualWield()
Return

; Change the bind below to assign equipping Mainhand + Shield
F23::EquipMHShield()
Return

; ---------------------------------------------------

; Function to equip items
Equip(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Sleep, ran(1,2)
    Send {%keybind% up}
}

; Equip MH + OH
EquipDualWield(){
    Equip("main_hand")
    Equip("off_hand")
}

; Equip MH + Shield
EquipMHShield(){
    Equip("main_hand")
    Equip("shield")
}