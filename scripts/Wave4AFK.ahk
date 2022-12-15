#NoEnv
SetWorkingDir %A_ScriptDir%
#MaxThreadsPerHotkey 2
Coordmode, Pixel, Screen
;==================================================
;Make sure you have the RS client selected when enabling
;the script as it will hook the current active window.
;==================================================
;KEYBIND CONFIG
toggle_bind = F1
overload_bind = 5
animate_dead_bind = v
extra_action_button_bind = f
;==================================================
State := 0
Hotkey, %toggle_bind%, Script
Return

Script:
{
    If %State% != 0
    {
        SetTimer, overload, OFF
        SetTimer, animate_dead, OFF
        SetTimer, extra_action_button, OFF
        State = 0
        Return
    }
    Else
    {
        WinGet, active_id, ID, A
        ;MsgBox, Hooked HWID: %active_id%

        SetTimer, overload, -1
        SetTimer, animate_dead, -1
        SetTimer, extra_action_button, -1

        State = 1
    }
}
Return

overload:
{
    IfWinExist, ahk_id %active_id%
    ControlSend, ,%overload_bind%, ahk_id %active_id%
    Random overload_timer, 175000, 178445
	sleep, 175000, 178445
	ControlSend, ,%extra_action_button_bind%, ahk_id %active_id%
    SetTimer, overload, -%overload_timer%
    Return
}

animate_dead:
{
    IfWinExist, ahk_id %active_id%
    ControlSend, ,%animate_dead_bind%, ahk_id %active_id%
    Random animate_dead_timer, 680000, 690000
    SetTimer, animate_dead, -%animate_dead_timer%
    Return
}

extra_action_button:
{
	IfWinExist, ahk_id %active_id%
	Random extra_action_button_timer, 0, 2000
	ControlSend, ,%extra_action_button_bind%, ahk_id %active_id%
	SetTimer, extra_action_button, -%extra_action_button_timer%
    Return
}


^`::ExitApp