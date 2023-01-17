#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\melee.png

; Hybridding keybinds configuration
brid_helm := "F6"
brid_body := "F8"
brid_legs := "F4"
brid_boots := "F3"
brid_2h := "`,"
brid_prayer := "Delete"



; Razer Naga -> Bottom Middle Key (11)
F22::
    Hybrid("brid_helm")
    Hybrid("brid_body")
    Hybrid("brid_legs")
    Hybrid("brid_boots")
    Hybrid("brid_prayer")
    Hybrid("brid_2h")
Return


; IGNORE THIS BELOW
; IGNORE THIS BELOW
; IGNORE THIS BELOW

; Random function for delays inbetween actions
ran(min,max) {
    random, ran, min, max
    return ran
}

; Function to equip items via Hybrid
Hybrid(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Sleep, ran(1,2)
    Send {%keybind% up}
}