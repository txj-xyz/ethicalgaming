#NoEnv
#SingleInstance, Force
#Include, components\functions.ahk
#Include, components\variables.ahk

#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Nex_chathead.png

; Hybridding keybinds configuration
brid_helm := "F6"
brid_body := "F8"
brid_legs := "F4"
brid_boots := "F3"
brid_2h := "F7"
brid_prayer := "Delete"

; CapsLock -> MH + BD OH
CapsLock::StallOmni()
Return

; Razer Naga -> Bottom Left Key (10)
; F23::IngenSGB()
; Return
F24::AutoDetoGstaff()
Return

; grico
; F4::GricoSwitch()
; Return


; Razer Naga -> Bottom Middle Key (11)
F22::HybridSwitch()
Return