#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\melee.png

; --------------- Configuration ---------------------

; Hybridding keybinds configuration
; To find a list of keys go here:
; https://www.autohotkey.com/docs/v1/KeyList.htm

brid_helm := "F7"
brid_body := "F8"
brid_legs := "+F8"
brid_boots := "+F7"
brid_2h := "F6"
brid_prayer := "+F6"

;
; Change the keybind below for the activation button;
; ------------------------------------------
; Mouse button 11 (Razer Naga)
; ------------------------------------------
F7::HybridSwitch()
Return



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
    Sleep, 60
    Equip("brid_2h")
}

; Random number function
ran(min,max) {
    random, ran, min, max
    return ran
}
