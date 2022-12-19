#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\melee.png

; Hybridding
brid_helm := "F6"
brid_body := "F7"
brid_legs := "F8"
brid_boots := "F3"
brid_2h := "F4"
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