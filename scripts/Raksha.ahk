#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Raksha.png


; pools bd switch
F4::
{
    Cast("quiver",30)
    Cast("grico_switch",30)
}
Return