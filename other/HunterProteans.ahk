#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Huge_protean_pack.png


F6::
{
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
}
Return

F7::
    TrayTip, AFK Proteans, Exiting, 3, 16
    ExitApp
Return