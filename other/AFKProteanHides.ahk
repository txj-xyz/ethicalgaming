#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
SendMode Input
SetTitleMatchMode, 2 ; Allow for partial matching of window titles
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Crafting.png

; Keybind configuration
game_client := __checkClient()
keybind := "s"
wait_duration := __ran(180986,182102) ; Crafting Protean Hides

Loop
{
    ControlSend,, {%keybind% down}, ahk_pid %game_client%
    ControlSend,, {%keybind% up}, ahk_pid %game_client%
    Sleep, __ran(600,611)
    Sleep, __ran(300,311)
    ControlSend,, {Space down}, ahk_pid %game_client%
    ControlSend,, {Space up}, ahk_pid %game_client%
    Sleep, %wait_duration% ; Sleep the duration of Rune Darts
}

; Exit the script
F12::ExitApp, 0
Return

; Reload the script
F11::Reload
Return


; Random number function
__ran(min,max) {
    random, ran, min, max
    return ran
}

; Check to see if the RS3 client is open if not crash the script
__checkClient() {
    WinGet, pid, PID, ahk_exe rs2client.exe
    if (!pid) {
        MsgBox, "RuneScape client was not found.`nExiting Script"
        ExitApp, 1
    }

    return pid
}