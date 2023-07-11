#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Logout_icon.png
Loop 
{ 
    Random, IntSleep, 53565, 153462 
    Sleep, %IntSleep% 

    Random, IntKey, 0,100

    if IntKey between 0 and 9
        {
            ControlSend,,{Up down},RuneScape
            Random, IntSend, 183, 515
            Sleep, %IntSend%
            ControlSend,,{Up up},RuneScape
        }
    if IntKey between 10 and 23
        {
            ControlSend,,{Down down},RuneScape
            Random, IntSend, 312, 634
            Sleep, %IntSend%
            ControlSend,,{Down up},RuneScape
        }
    if IntKey between 24 and 59
        {
            ControlSend,,{Left down},RuneScape
            Random, IntSend, 354, 1176
            Sleep, %IntSend%
            ControlSend,,{Left up},RuneScape
        }
    if IntKey between 60 and 100
        {
            ControlSend,,{Right down},RuneScape
            Random, IntSend, 573, 1343
            Sleep, %IntSend%
            ControlSend,,{Right up},RuneScape
        }
}
