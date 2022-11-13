#Include, modules\variables.ahk
#Include, modules\functions.ahk
#MaxThreadsPerHotkey 2
#SingleInstance Force
    F6:: ;afk arch glacor
    Loop {
        ; Send key to program while in background
        ControlSend, , {Space down}{Space up}, RuneScape
        ; attempt to wait between kills
        sleep, % ran(30000, 40000)
    }
    return