#Include, modules\variables.ahk
#Include, modules\functions.ahk
#MaxThreadsPerHotkey 2
#SingleInstance Force
SendMode Input
#IfWinActive RuneScape
    Menu, Tray, Icon, %A_ScriptDir%\icons\icon.ico
    
    ; Raksha Specific BD Pools
    F24::
        Equip("bd_boots")
        Equip("lani_spear")
    Return

    ; Right Click -> Left Click.
    F23::
       RightClick()
       LeftClick()
    Return
    
    ; Hybridding
    F22::
        HybridCast("brid_helm")
        HybridCast("brid_body")
        HybridCast("brid_legs")
        ; Equip("brid_boots")
        HybridCast("brid_prayer")
        HybridCast("brid_2h")
    Return


    ; ;Aod4 prebuild
    ; F10::
    ;     Cast("natty")
    ;     WaitGCD()
    ;     Cast("gconc")
    ;     WaitGCD()
    ;     Cast("wrack")
    ;     WaitGCD()
    ;     Cast("impact")
    ;     WaitGCD()
    ;     Cast("anticipate")
    ;     WaitGCD()
    ;     Cast("sunshine")
    ;     WaitGCD()
    ;     Equip("mainhand")
    ;     Equip("shield")
    ;     WaitOneTick()
    ;     Cast("prep")
    ;     WaitGCD()
    ;     Cast("tsunami")
    ;     WaitGCD()
    ;     Equip("fsoa")
    ;     WaitGCD()
    ;     Cast("weapon_special")
    ;     WaitGCD()
    ;     Equip("mainhand")
    ;     Equip("offhand")
    ;     Cast("gconc")
    ; Return

    ; Sbs + disrupt
    +C::
        Cast("sbs")
        sleep, % ran(1,2)
        Cast("disruption_shield")
    Return

    ; sbs + veng
    +V::
        Cast("sbs")
        sleep, % ran(1,2)
        Cast("veng")
    Return

    ; sbs + heal other
    +B::
        Cast("sbs")
        sleep, % ran(1,2)
        Cast("heal_other")
    Return

    ; target cycle + smoke cloud
    ; F13::
    ;     Equip("bd_mainhand")
    ;     Equip("bd_offhand")
    ;     Cast("bladed_dive")
    ;     LeftClick()
    ; Return

    ; Pause Hotkey
    F9::
        Suspend
        If A_IsSuspended {
            TrayTip, "Boss Macros", Macros Deactivated, 5, 1
        } else {
            TrayTip, "Boss Macros", Macros Activated, 5, 1
        }
    Return