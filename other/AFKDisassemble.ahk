#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Invention.png

F6::
    Loop
    {
        TrayTip, AFK Disassembler, Started Disassembling, 5, 16
        CoordClick("DisassembleMageBook", "L")
        Sleep, ran(30, 100)
        CoordClick("FirstSlot","L")
        time_var := ran(68000, 70000)
        seconds_took := (time_var/1000)
        Sleep, %time_var%
        TrayTip, AFK Disassembler, Finished Disassembling took %seconds_took% seconds., 10, 16
    }
Return

F7::
    TrayTip, AFK Disassembler, Exiting, 5, 16
    ExitApp
Return