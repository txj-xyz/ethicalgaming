#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Logout_icon.png

Loop
{

    ; define random number
    Random, random_time, 14492, 24918
    timer_seconds := Round(random_time / 1000)

    ; Alert picking up loot
    TrayTip, AFK Helwyr, Grabbing loot`nTook: %timer_seconds% seconds, 3, 16

    ; Grab loot
    ControlSend,,{Space},RuneScape
    ControlSend,,{v},RuneScape
    WaitHalfTick()
    ControlSend,,{v},RuneScape
    WaitHalfTick()
    ControlSend,,{v},RuneScape
    Sleep, %random_time%
}

; Q::
; {
;     ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40, *TransBlack %A_WorkingDir%\utils\Neutron\images\Uc5qGaFfhgf3qXRPeeKU.png
;     if ErrorLevel = 1
;     {
;         MsgBox, Found at x%FoundX% y%FoundY%
;     }
; }


F12::ExitApp
Return