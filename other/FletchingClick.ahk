#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Fletching.png

Loop
{
        ControlSend,,{d down},RuneScape
        ControlSend,,{d up},RuneScape
        WaitOneTick()
        WaitHalfTick()
        ControlSend,,{Space down},RuneScape
        ControlSend,,{Space up},RuneScape
        Sleep, ran(11921,12452)
}

LAlt::ExitApp
Return