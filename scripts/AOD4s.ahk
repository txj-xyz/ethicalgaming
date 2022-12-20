#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Nex_chathead.png

; 4man rotation from austin
; F10::AOD4PrebuildP0()
; Return


; CapsLock -> MH + BD OH
CapsLock::
    Cast("mainhand",30)
    Cast("bd_offhand",30)
Return

; Razer Naga -> Bottom Left Key (10)
F23::IngenSGB()
Return