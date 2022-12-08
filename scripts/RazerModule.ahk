#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\razer.png

; Razer Naga -> Bottom Left Key (10)
F23::
    Hybrid("brid_boots")
    Hybrid("brid_2h")
Return

; Razer Naga -> Bottom Middle Key (11)
F22::
    Hybrid("brid_helm")
    Hybrid("brid_body")
    Hybrid("brid_legs")
    Hybrid("brid_prayer")
    Hybrid("brid_2h")
Return

; Razer Naga -> Bottom Right Key (12)
F24::
    RagoHammerClimb()
Return