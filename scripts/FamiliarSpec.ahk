#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\kalg.png

<!e::
{
    ; Image search for a specific image file named "target.png" in the screen
    ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *80, *TransBlack %A_WorkingDir%\utils\Neutron\images\FOqE71nEc0yzYn2LpWwM.png
    if ErrorLevel = 0
    {
        ; Call Familiar
        Cast("call_familiar", WaitHalfTick(), "Alt")

        ClickX := FoundX + 10
        ClickY := FoundY + 10

        ; Click button to special attack
        ControlClick, x%ClickX% y%ClickY%, RuneScape,,L,,
    }
}
Return