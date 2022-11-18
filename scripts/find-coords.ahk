/**
 * Copyright (c) GitHub/EthicalGaming.
 * Original code inspired by https://www.autohotkey.com/board/topic/57646-function-selectarea/
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
*/

SelectArea(Options="") {
/*
Returns coordinates of selected area. Made to return the format required in ImageSearch.ahk.
Options: (White space separated)
- c color. Default: Blue.
- t transparency. Default: 50.
- g GUI number. Default: 99.
- m CoordMode. Default: s. s = Screen, r = Relative
    */
    CoordMode, Mouse, Screen
    MouseGetPos, MX, MY
    CoordMode, Mouse, Relative
    MouseGetPos, rMX, rMY
    CoordMode, Mouse, Screen
    loop, parse, Options, %A_Space%
    {
        Field := A_LoopField
        FirstChar := SubStr(Field,1,1)
        if FirstChar contains c,t,g,m
        {
            StringTrimLeft, Field, Field, 1
            %FirstChar% := Field
        }
    }
    c := (c = "") ? "Blue" : c, t := (t = "") ? "50" : t, g := (g = "") ? "99" : g , m := (m = "") ? "s" : m
    Gui %g%: Destroy
    Gui %g%: +AlwaysOnTop -caption +Border +ToolWindow +LastFound
    WinSet, Transparent, %t%
    Gui %g%: Color, %c%
    Hotkey := RegExReplace(A_ThisHotkey,"^(\w* & |\W*)")
    While, (GetKeyState(Hotkey, "p"))
    {
        Sleep, 10
        MouseGetPos, MXend, MYend
        w := abs(MX - MXend), h := abs(MY - MYend)
        X := (MX < MXend) ? MX : MXend
        Y := (MY < MYend) ? MY : MYend
        Gui %g%: Show, x%X% y%Y% w%w% h%h% NA
    }
    Gui %g%: Destroy
    if m = s ; Screen
    {
        MouseGetPos, MXend, MYend
        If ( MX > MXend )
            temp := MX, MX := MXend, MXend := temp
        If ( MY > MYend )
            temp := MY, MY := MYend, MYend := temp
        arr := [MX, MY, MXend, MYend]
        Return Format("""X1"", {}, ""Y1"", {}, ""X2"", {}, ""Y2"", {}", arr*)
    }
    else ; Relative
    {
        CoordMode, Mouse, Relative
        MouseGetPos, rMXend, rMYend
        If ( rMX > rMXend )
            temp := rMX, rMX := rMXend, rMXend := temp
        If ( rMY > rMYend )
            temp := rMY, rMY := rMYend, rMYend := temp
        arr := [rMX, rMY, rMXend, rMYend]
        Return Format("""X1"", {}, ""Y1"", {}, ""X2"", {}, ""Y2"", {}", arr*)
    }
}

; Right click + hold to select area.
Rbutton::
    coordinates := SelectArea()
    ; TrayTip, Coordinates, Coordinates Copied to Clipboard, 20, 1
    TrayTip, Coordinates Copied to Clipboard, %coordinates%, 20, 1
    clipboard := coordinates
Return

; Escape to terminate the app.
Escape::
ExitApp
Return