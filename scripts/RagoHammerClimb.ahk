#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Vorago_chathead.png


; Razer Naga -> Bottom Right Key (12)
F24::
    RagoHammerClimb()
Return

; Razer Naga -> Bottom Middle Key (11)
F22::GricoSwitch()
Return

; Razer Naga -> Bottom Left Key (10)
[::
    EscapeBD()
Return