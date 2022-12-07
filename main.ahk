#Include, components\variables.ahk
#Include, components\functions.ahk

#MaxThreadsPerHotkey 2
#SingleInstance Force
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_ScriptDir%\icons\icon.ico
    
    ; Razer Naga -> Bottom Left Key
    F23::
        Hybrid("brid_boots")
        Hybrid("brid_2h")
    Return

    ; Razer Naga -> Bottom Right Key
    ; TC -> Ingen -> Hammer -> BD -> Click
    F24::
        RagoHammerClimb()
    Return
    
    ; Mouse Bottom Middle
    F22::
        Hybrid("brid_helm")
        Hybrid("brid_body")
        Hybrid("brid_legs")
        Hybrid("brid_prayer")
        Hybrid("brid_2h")
    Return

    ; Sbs + disrupt
    +C::SBSDisrupt()
    Return

    ; sbs + veng
    +V::SBSVeng()
    Return

    ; sbs + heal other
    +B::SBSHealOther()
    Return

    ; Pause Hotkey
    F9::PauseScript()
    Return

    ;Reload Script
    F11::Reload
    Return