; Random function for delays inbetween actions
ran(min,max) {
    random, ran, min, max
    return ran
}

; Auto -> Deto -> Gstaff
AutoDetoGstaff() {
    Cast("ice_barrage",75)
    Cast("detonate",75)
    Cast("eof_spec",25)
}

; Helper function to perform a left click.
LeftClick() {
    Send {Click down}
    Send {Click up}
    Sleep, % ran(1,2)
}

; Helper function to perform a right click.
RightClick() {
    Send {Click down Right}
    Send {Click up Right}
    Sleep, ran(1,2)
}

; Wait a certain ms time for ticks
WaitTick(amount) {
    Sleep, amount
}

; Wait a Global Cooldown
WaitGCD() {
    Sleep, ran(1800,1805)
}

; Wait one game Tick
WaitOneTick() {
    Sleep, ran(600,605)
}

; Helper function to perform a keybind press without keydown
Equip(Keybind, EnableWait := 30) {
    keybind := %Keybind%
    Send %keybind%
    Sleep, %EnableWait%
}

;equip brid binds
Hybrid(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Sleep, ran(1,2)
    Send {%keybind% up}
}

; Helper function to send a keybind up and down, i.e. casting an ability or auto attack.
Cast(Keybind, Wait := 1800) {
    keybind := %Keybind%
    Send {%keybind% down}
    Send {%keybind% up}
    Sleep, %Wait%
}

; Function helper for Left clicking coords
CoordClick(Area, InputType) {
    Random, areaX, Coords[Area].X1, Coords[Area].X2
    Random, areaY, Coords[Area].Y1, Coords[Area].Y2
    ControlClick, x%areaX% y%areaY%, RuneScape,,%InputType%,,
}

; Ingen -> Quiver -> SGB EOF -> Ranged Wep -> EOFSpec
IngenSGB() {
    Cast("ingen",30)
    Cast("quiver",30)
    Cast("sgb_eof",30)
    Cast("xbow",30)
    Cast("eof_spec",1800)
    Cast("sgb_eof",30)
    Cast("quiver",30)
    Cast("xbow",30)
}

; TC -> Ingen -> Hammer -> BD - LeftClick()
RagoHammerClimb() {
    Cast("tc",30)
    Cast("ingen",30)
    Cast("weapon_special",30)
    Cast("bladed_dive",30)
    LeftClick()
}

; Escape -> BD -> LeftClick()
EscapeBD() {
    Cast("mv_escape",30)
    Cast("bladed_dive",30)
    LeftClick()
}

; MH + OH
StallOmni() {
    Cast("mainhand",30)
    Cast("bd_offhand",30)
}

; MH + OH -> BD -> LeftClick()
BladedDive() {
    Equip("bd_mainhand")
    Equip("bd_offhand")
    Cast("bladed_dive")
    LeftClick()
}

; Spellbook Swap + Disruption Shield
SBSDisrupt() {
    Cast("sbs", ran(1,2))
    Cast("disruption_shield", ran(1,2))
}

; Spellbook Swap + Vengeance
SBSVeng() {
    Cast("sbs", ran(1,2))
    Cast("veng", ran(1,2))
}

; Spellbook Swap + Heal Other
SBSHealOther() {
    Cast("sbs", ran(1,2))
    Cast("heal_other", ran(1,2))
}

; Pauses the running boss macro script
PauseScript() {
    Suspend
    If A_IsSuspended {
        TrayTip, "Boss Macros", Macros Deactivated, 5, 1
    } else {
        TrayTip, "Boss Macros", Macros Activated, 5, 1
    }
}