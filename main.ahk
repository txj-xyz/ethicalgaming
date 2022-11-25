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
        Equip("brid_helm")
        Equip("brid_body")
        Equip("brid_legs")
        ; Equip("brid_boots")
        Cast("brid_prayer")
        Equip("brid_2h")
    Return


    ; Aod4 prebuild
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
    ; `::
    ;     Use("tc")
    ;     Use("smoke_cloud")
    ; Return