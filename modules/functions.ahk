; Random function for delays inbetween actions
ran(min,max)
{
    random, ran, min, max
    return ran
}

; Helper function to perform a left click.
LeftClick() {
    Send {Click down}
    Sleep, % ran(1,2)
    Send {Click up}
    Sleep, % ran(1,2)
}

; Helper function to perform a right click.
RightClick() {
    Send {Click down Right}
    Sleep, % ran(1,2)
    Send {Click up Right}
    Sleep, % ran(1,2)
}

; Wait a certain ms time for ticks
WaitTick(amount) {
    Sleep, amount
}

; Wait a Global Cooldown
WaitGCD() {
    Sleep, 1800
}

; Wait one game Tick
WaitOneTick() {
    Sleep, 605
}

; Helper function to perform a keybind press without keydown
Equip(Keybind) {
    keybind := %Keybind%
    Send %keybind%
}

; Helper function to perform a keybind press without keydown
Use(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Send {%keybind% up}
}

; Helper function to send a keybind up and down, i.e. casting an ability or auto attack.
Cast(Keybind) {
    keybind := %Keybind%
    Send %keybind%
}

; Function helper for Left clicking coords
CoordLClick(Area){
   Random, areaX, Shop[Area].X1, Shop[Area].X2
   Random, areaY, Shop[Area].Y1, Shop[Area].Y2
   ControlClick, x%areaX% y%areaY%, RuneScape,,L,,
}

; Function helper for Right clicking coords
CoordRClick(Area){
   Random, areaX, Shop[Area].X1, Shop[Area].X2
   Random, areaY, Shop[Area].Y1, Shop[Area].Y2
   ControlClick, x%areaX% y%areaY%, RuneScape,,R,,
}

; Function helper for Left clicking coords
CoordClick(Area){
   Random, areaX, Coords[Area].X1, Coords[Area].X2
   Random, areaY, Coords[Area].Y1, Coords[Area].Y2
   ControlClick, x%areaX% y%areaY%, RuneScape,,L,,
}