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

; Helper function to perform a keybind press without keydown
Equip(Keybind) {
    keybind := %Keybind%
    Send %keybind%
}

; Helper function to send a keybind up and down, i.e. casting an ability or auto attack.
Cast(Keybind) {
    keybind := %Keybind%
    Send {%keybind% down}
    Sleep, % ran(1,2)
    Send {%keybind% up}
    Sleep, % ran(1,2)
}
