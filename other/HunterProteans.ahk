#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 1
SetControlDelay -1
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Huge_protean_pack.png

F1::
    MsgBox,
(
F1 = Help Dialog
F5 = AFK Clicking
F6 = AFK Hunter Proteans
)
return

; AFK Clicking
F5::
    ; Get the mouse position when script starts and store X -> Y
    CoordMode, Mouse, Relative
    MouseGetPos, Xtesting, Ytesting
    ControlClick, x%Xtesting% y%Ytesting%, RuneScape,,%InputType%,,
    Loop
    {
        Random, IntSleep, 53565, 153462
        Sleep, %IntSleep%

        Random, IntKey, 0,100

        if IntKey between 0 and 9
        {
            ControlClick, x%Xtesting% y%Ytesting%, RuneScape,,%InputType%,,
        }
        if IntKey between 10 and 23
        {
            ControlClick, x%Xtesting% y%Ytesting%, RuneScape,,%InputType%,,
        }
        if IntKey between 24 and 59
        {
            ControlClick, x%Xtesting% y%Ytesting%, RuneScape,,%InputType%,,
        }
        if IntKey between 60 and 100
        {
            ControlClick, x%Xtesting% y%Ytesting%, RuneScape,,%InputType%,,
        }
    }
Return

; Hunter Proteans
F6::
    CoordClick("FirstSlot", "L")
    Loop
    {
        Random, IntSleep, 53565, 153462
        Sleep, %IntSleep%

        Random, IntKey, 0,100

        if IntKey between 0 and 9
        {
            CoordClick("FirstSlot", "L")
        }
        if IntKey between 10 and 23
        {
            CoordClick("FirstSlot", "L")
        }
        if IntKey between 24 and 59
        {
            CoordClick("FirstSlot", "L")
        }
        if IntKey between 60 and 100
        {
            CoordClick("FirstSlot", "L")
        }
    }
Return

F7::
    TrayTip, AFK Proteans, Exiting, 3, 16
ExitApp
Return