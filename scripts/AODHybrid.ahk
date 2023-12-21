#NoEnv
#SingleInstance, Force
#Include, components\functions.ahk
#Include, components\variables.ahk

#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Nex_chathead.png

; Hybridding keybinds configuration
brid_helm := "F7"
brid_body := "F8"
brid_legs := "+F8"
brid_boots := "+F7"
brid_2h := "F6"
brid_prayer := "+F6"
excal := ","

; CapsLock -> MH + BD OH
CapsLock::StallOmni()
Return

; Razer Naga -> Bottom Middle Key (11)
F7::HybridSwitch()
Return

; F24::AODHammerRelease()
; Return




; Ignore below ---
; ------------------- Functions --------------------


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

; Random number function
ran(min,max) {
    random, ran, min, max
    return ran
}

; MH + EXCAL
StallOmni() {
    Equip("mainhand")
    Sleep % ran(1,30)
    Equip("bd_offhand")
}