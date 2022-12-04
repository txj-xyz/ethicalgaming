#Include, modules\variables.ahk
#Include, modules\functions.ahk
#MaxThreadsPerHotkey 2
#SingleInstance Force
SendMode Input
#IfWinActive RuneScape
    Menu, Tray, Icon, %A_ScriptDir%\icons\icon.ico
    
    ; Mouse Bottom Left
    F23::
        HybridCast("brid_boots")
        HybridCast("brid_2h")
    Return

    ; Mouse Bottom Right
    ; TC -> Ingen -> Hammer -> BD -> Click
    F24::
        RagoHammerClimb()
    Return
    
    ; Mouse Bottom Middle
    F22::
        HybridCast("brid_helm")
        HybridCast("brid_body")
        HybridCast("brid_legs")
        HybridCast("brid_prayer")
        HybridCast("brid_2h")
    Return


    ; Vorago 
    ; Escape -> BD -> LeftClick()
    ; CapsLock::
    ;     VoragoEscapeBD()
    ; Return


    ; AOD
    ; Stall Omni
    ; CapsLock::
    ;     StallOmni()
    ; Return

    ; AOD
    ; F10::
    ;     AOD4PrebuildP0()
    ; Return

    ; Sbs + disrupt
    +C::
        Cast("sbs", ran(1,2))
        Cast("disruption_shield", ran(1,2))
    Return

    ; sbs + veng
    +V::
        Cast("sbs", ran(1,2))
        Cast("veng", ran(1,2))
    Return

    ; sbs + heal other
    +B::
        Cast("sbs", ran(1,2))
        Cast("heal_other", ran(1,2))
    Return

    ; Pause Hotkey
    F9::
        Suspend
        If A_IsSuspended {
            TrayTip, "Boss Macros", Macros Deactivated, 5, 1
        } else {
            TrayTip, "Boss Macros", Macros Activated, 5, 1
        }
    Return

    Reload Script
    F11::Reload
    Return