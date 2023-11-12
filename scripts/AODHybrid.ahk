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
brid_legs := "]"
brid_boots := "["
brid_2h := "F6"
brid_prayer := "["

; CapsLock -> MH + BD OH
CapsLock::StallOmni()
Return

; Razer Naga -> Bottom Middle Key (11)
F7::HybridSwitch()
Return

; F24::AODHammerRelease()
; Return