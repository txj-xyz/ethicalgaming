#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Logout_icon.png

SetTitleMatchMode, 2 ; Allow partial matching of window titles
WinGet, rs2clientHwnd, ID, RuneScape
if !rs2clientHwnd
{
    MsgBox, "RuneScape window not found!"
    return
}

Loop 
{ 
    Random, IntSleep, 53565, 153462
    Sleep, %IntSleep% 
    Random, IntKey, 0,100

    if IntKey between 0 and 9
        {
            ControlSend,,{Up down},ahk_id %rs2clientHwnd%
            Random, IntSend, 183, 515
            Sleep, %IntSend%
            ControlSend,,{Up up},ahk_id %rs2clientHwnd%
        }
    if IntKey between 10 and 23
        {
            ControlSend,,{Down down},ahk_id %rs2clientHwnd%
            Random, IntSend, 312, 634
            Sleep, %IntSend%
            ControlSend,,{Down up},ahk_id %rs2clientHwnd%
        }
    if IntKey between 24 and 59
        {
            ControlSend,,{Left down},ahk_id %rs2clientHwnd%
            Random, IntSend, 354, 1176
            Sleep, %IntSend%
            ControlSend,,{Left up},ahk_id %rs2clientHwnd%
        }
    if IntKey between 60 and 100
        {
            ControlSend,,{Right down},ahk_id %rs2clientHwnd%
            Random, IntSend, 573, 1343
            Sleep, %IntSend%
            ControlSend,,{Right up},ahk_id %rs2clientHwnd%
        }
}
