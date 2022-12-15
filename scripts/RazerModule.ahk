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
    ; Hybrid("brid_boots")
    ; Hybrid("brid_2h")
    ; EscapeBD()
    IngenSGB()
Return