; Random function for delays inbetween actions
ran(min,max)
{
    random, ran, min, max
    return ran
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
    Sleep, % ran(1,2)
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
Equip(Keybind, EnableWait := 0) {
    keybind := %Keybind%
    Send %keybind%
    Sleep, %EnableWait%
}

Hybrid(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    sleep, ran(1,2)
    Send {%keybind% up}
}

; Helper function to send a keybind up and down, i.e. casting an ability or auto attack.
Cast(Keybind, Wait := 1800) {
    keybind := %Keybind%
    Send %keybind%
    Sleep, %Wait%
}

; Function helper for Left clicking coords
CoordClick(Area, InputType){
   Random, areaX, Coords[Area].X1, Coords[Area].X2
   Random, areaY, Coords[Area].Y1, Coords[Area].Y2
   ControlClick, x%areaX% y%areaY%, RuneScape,,%InputType%,,
}

; TC -> Ingen -> Hammer -> BD - LeftClick()
RagoHammerClimb(){
    Send, {``}
    Sleep, 30
    Send, {F6}
    Sleep, 30
    Send, {b}
    Sleep, 30
    Send, {W}
    Sleep, 30
    LeftClick()
}

; AOD4 prebuild
AOD4PrebuildP0(){
    Cast("natty")
    Cast("gconc")
    Cast("wrack")
    Cast("impact")
    Cast("anticipate")
    Cast("sunshine")
    Cast("freedom")
    Equip("mainhand")
    Equip("shield", 600)
    Cast("prep")
    Cast("tsunami")
    Equip("fsoa", 600)
    Cast("weapon_special")
    Equip("mainhand", 30)
    Equip("offhand", 30)
    Cast("gconc")
    Send, {F3}
    Sleep, 30
    Send, {F4}
    Sleep, 30
    Send, {e}
    Sleep, 600
    Send, {F3}
    Sleep, 30
    Send, {F4}
}

; Escape -> BD -> LeftClick()
EscapeBD(){
    Cast("mv_escape",30)
    Cast("bladed_dive",30)
    LeftClick()
}

; MH + OH
StallOmni(){
    Cast("mainhand",30)
    Cast("bd_offhand",30)
}

; MH + OH -> BD -> LeftClick()
BladedDive(){
    Equip("bd_mainhand")
    Equip("bd_offhand")
    Cast("bladed_dive")
    LeftClick()
}


; Spellbook Swap + Disruption Shield
SBSDisrupt(){
    Cast("sbs", ran(1,2))
    Cast("disruption_shield", ran(1,2))
}

; Spellbook Swap + Vengeance
SBSVeng(){
    Cast("sbs", ran(1,2))
    Cast("veng", ran(1,2))
}

; Spellbook Swap + Heal Other
SBSHealOther(){
    Cast("sbs", ran(1,2))
    Cast("heal_other", ran(1,2))
}

; Pauses the running boss macro script
PauseScript(){
    Suspend
    If A_IsSuspended {
        TrayTip, "Boss Macros", Macros Deactivated, 5, 1
    } else {
        TrayTip, "Boss Macros", Macros Activated, 5, 1
    }
}