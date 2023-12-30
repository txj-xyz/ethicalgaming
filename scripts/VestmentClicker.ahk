#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
#Include, components\functions.ahk
#Include, components\coordinates.ahk
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\necro.png

!F7::
{
    CoordClick("VestmentHood", "L")
    
    Sleep, 20
    CoordClick("VestmentBody", "L")

    Sleep, 20
    CoordClick("VestmentLegs", "L")
    
    Sleep, 20
    CoordClick("VestmentBoots", "L")
}
Return