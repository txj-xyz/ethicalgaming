#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
#Include, components\functions.ahk
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\melee.png

; Hybridding keybinds configuration
brid_helm := "F6"
brid_body := "F8"
brid_legs := "F4"
brid_boots := "F3"
brid_2h := "F7"
brid_prayer := "Delete"



; Razer Naga -> Bottom Middle Key (11)
F22::HybridSwitch()
Return