#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
; Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\melee.png

; ---------------------------------------------------
; --------------- Configuration ---------------------
; ---------------------------------------------------

; Hybridding keybinds configuration
brid_helm := "F6"
brid_body := "F8"
brid_legs := "F4"
brid_boots := "F3"
brid_2h := "F7"
brid_prayer := "Delete"

; F22 is configured to be our hybrid swap button, you can swap that below to anything you want
; Check the documentation for AHK Keys if you need any help
F22::HybridSwitch()
Return
; ---------------------------------------------------
; ---------------------------------------------------
; ---------------------------------------------------






; ---------------------------------------------------
; ------------------- Functions ---------------------
; ---------------------------------------------------

; Function to equip items via Hybrid
Equip(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Sleep, ran(1,2)
    Send {%keybind% up}
}

; Hybrid Swap Function
HybridSwitch(){
    Equip("brid_helm")
    Equip("brid_body")
    Equip("brid_legs")
    Equip("brid_boots")
    Equip("brid_prayer")
    Sleep, ran(1,30)
    Equip("brid_2h")
}

; Random numbers
ran(min,max) {
    random, ran, min, max
    return ran
}
