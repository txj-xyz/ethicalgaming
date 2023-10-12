#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Fletching.png


IfWinActive, ahk_exe rs2client.exe
{
    Loop
    {
        ControlSend,,{d down},RuneScape
        ControlSend,,{d up},RuneScape
        WaitOneTick()
        WaitHalfTick()
        ControlSend,,{Space down},RuneScape
        ControlSend,,{Space up},RuneScape
        Sleep, ran(9891,11422)
    }
}


LAlt::ExitApp
Return