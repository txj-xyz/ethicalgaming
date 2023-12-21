SendMode, Input
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
    Sleep, ran(1800,1812)
}

; Wait one game Tick
WaitOneTick() {
    Sleep, ran(600,611)
}

; Wait one-half a game Tick
WaitHalfTick() {
    Sleep, ran(300,311)
}

; Helper function to perform a keybind press without keydown
Equip(Keybind, EnableWait := 30) {
    keybind := %Keybind%
    Send %keybind%
    Sleep, %EnableWait%
}

; Function to equip items via Hybrid
Hybrid(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Sleep, ran(1,2)
    Send {%keybind% up}
}


; Function to concatenate array elements with a delimiter
joinString(array, delimiter) {
    result := ""
    Loop % array.Length()
    {
        if (result <> "")
            result .= delimiter
        result .= array[A_Index - 0]
    }
    return result
}

; Helper function to send a keybind up and down, i.e. casting an ability or auto attack.
Cast(Keybind, Wait := 1800, Modifier := "") {
    keybind := %Keybind%
    if (Modifier) {
        Send {%Modifier% down}
        Send {%keybind% down}
        Sleep, %Wait% 
        Send {%keybind% up}
        Send {%Modifier% up}
        Sleep, %Wait% 
    }
    Else
    {
        Send {%keybind% down}
        Sleep, %Wait%
        Send {%keybind% up}
        Sleep, %Wait%
    }
}

; Say something in the game via a string parameter
; @Message = String --- @Type = "" | "//" | "///" | "////"
SayChat(Message, Type := "") {
    message := Message
    message_type := Type
    Send, {Enter}
    Sleep, 50
    Send, %message_type%%message%
    Sleep, 50
    Send, {Enter}
    Sleep, 1000
}

; Function helper for Left clicking coords
CoordClick(Area, InputType) {
    Random, areaX, Coords[Area].X1, Coords[Area].X2
    Random, areaY, Coords[Area].Y1, Coords[Area].Y2
    ControlClick, x%areaX% y%areaY%, RuneScape,,%InputType%,,
}

; Function helper to move mouse to coordinates object
CoordMove(Area) {
    Random, areaX, Coords[Area].X1, Coords[Area].X2
    Random, areaY, Coords[Area].Y1, Coords[Area].Y2
    MouseMove, %areaX%, %areaY%
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
    Cast("eof_spec",30)
    Cast("bladed_dive",30)
    LeftClick()
}

; TC -> SC -> EOF Spec -> Staff
HammerSmokeStaff() {
    Cast("tc",30)
    Cast("smoke_cloud",30)
    Cast("hammer_eof",70)
    Cast("ingen",30)
    Cast("hammer_eof",30)
    Cast("eof_spec",30)
    Cast("xbow",30)
}

; TC -> SC -> MH+OH
AODHammerRelease() {
    Cast("tc",30)
    Cast("smoke_cloud",80)
    Cast("mainhand",30)
    Cast("offhand",30)
}

; TC -> SC -> MH+OH -> Death Skulls
AODNecroHammerRelease() {
    Cast("tc",30)
    Cast("smoke_cloud",70)
    Cast("mainhand",70)
    Cast("death_skulls",70)
}

; Escape -> BD -> LeftClick()
EscapeBD() {
    Cast("mv_escape",30)
    Cast("bladed_dive",30)
    LeftClick()
}

; MH + EXCAL
StallOmni() {
    Cast("mainhand",30)
    Cast("bd_offhand",30)
}

; MH + OH (All Styles) 
EquipDualWield() {
    Cast("mainhand",30)
    Cast("offhand",30)
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

; Grico Switch
GricoSwitch() {
    Cast("quiver",30)
    Cast("ecb",30)
}

; Equip Chins + OH Caroming
CaromingChins() {
    Cast("chins", ran(1,2))
    Cast("asc_caroming", ran(1,2))
}


; Heal Excal
; HealExcal() {

; }