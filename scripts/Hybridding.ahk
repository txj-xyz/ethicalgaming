#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\melee.png


; Razer Naga -> Bottom Middle Key (11)
F22::
    Hybrid("brid_helm")
    Hybrid("brid_body")
    Hybrid("brid_legs")
    Hybrid("brid_prayer")
    Hybrid("brid_2h")
Return