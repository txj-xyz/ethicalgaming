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

; grico switch
F22::
    Cast("quiver",30)
    Cast("ecb",30)
Return

; Razer Naga -> Bottom Left Key (10)
F23::
    EscapeBD()
Return