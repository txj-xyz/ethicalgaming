#Include, utils\Variables.ahk
#Include, utils\General.ahk
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

    ; Hybridding Mage + Melee
    ; F21::
    ;     Cast("brid_helm")
    ;     Cast("brid_body")
    ;     Cast("brid_legs")
    ;     Cast("brid_boots")
    ;     Cast("brid_2h")
    ;     Cast("brid_prayer")
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