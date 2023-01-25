#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\dummy.png

F6::
    Loop
    {
        CoordClick("InventionWorkbench", "L")
        WaitGCD()
        WaitGCD()
        WaitGCD()
        ControlSend,,{Space down},RuneScape
        ControlSend,,{Space up},RuneScape
        Sleep, ran(55000, 60000)
        CoordClick("InventionBank","L")
        WaitGCD()
        WaitGCD()
        WaitGCD()
        ControlSend,,{3 down},RuneScape
        ControlSend,,{3 up},RuneScape
        Sleep, ran(1,50)
        ControlSend,,{Escape down},RuneScape
        ControlSend,,{Escape up},RuneScape
        WaitGCD()
    }
Return

F7::
    TrayTip, AFK Dummy Maker, Exiting, 2, 16
    ExitApp
Return