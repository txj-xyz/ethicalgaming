#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\XP.png

F6::
    Loop
    {
        TrayTip, AFK Disassembler, Started Disassembling, 10, 16
        CoordClick("DisassembleMageBook", "L")
        Sleep, ran(30, 100)
        CoordClick("FirstSlot","L")
        Sleep, ran(68000, 70000)
        TrayTip, AFK Disassembler, Finished Disassembling, 10, 16
    }
Return

`::
    TrayTip, AFK Disassembler, Exiting, 10, 16
    ExitApp
Return