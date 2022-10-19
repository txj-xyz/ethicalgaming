#Include, modules\variables.ahk
#Include, modules\functions.ahk
#MaxThreadsPerHotkey 2
#SingleInstance Force
#IfWinActive RuneScape
    global name := "Boss Macro"

    ; Raksha Specific BD Pools
    ; F22::
    ;     Equip("bd_boots")
    ;     Equip("lani_spear")
    ; Return

    ; Right Click -> Left Click.
    ; F21::
    ;    RightClick()
    ;    LeftClick()
    ; Return

    ; Hybridding Mage
    F21::
        Cast("brid_start_key")
        WaitTick(600)
        Cast("magic_brid_helm")
        Cast("magic_brid_body")
        Cast("magic_brid_legs")
        Cast("magic_brid_boots")
        Cast("magic_brid_prayer")
        Equip("magic_brid_2h")
    Return
    
    ; Hybridding Melee
    F22::
        Cast("brid_start_key")
        WaitTick(600)
        Cast("melee_brid_helm")
        Cast("melee_brid_body")
        Cast("melee_brid_legs")
        Cast("melee_brid_boots")
        Cast("melee_brid_prayer")
        Cast("melee_brid_2h")
    Return

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