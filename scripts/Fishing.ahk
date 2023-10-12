#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 4
SetControlDelay -1
SetTitleMatchMode, 2
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\fishing.png
F2::
{

    boxSize := 75
    
    ; Get current mouse position
    MouseGetPos, mouseX, mouseY

    ; get screen
    CoordMode, Mouse, Screen
    MouseGetPos, ScreenMouseX, ScreenMouseY
    ScreenBoxX := ScreenMouseX - boxSize / 2
    ScreenBoxY := ScreenMouseY - boxSize / 2
    CoordMode, Mouse, Relative

    ; Calculate box coordinates
    x1 := mouseX - boxSize / 2
    y1 := mouseY - boxSize / 2
    x2 := x1 + boxSize
    y2 := y1 + boxSize

    ; Get random X/Y for clicking
    Random, areaX, x1, x2
    Random, areaY, y1, y2

    ; Draw coords in box
    Xpos := x1
    Ypos := y1

    MsgBox, Clicking at x%areaX% y%areaY%
    ControlClick, x%areaX% y%areaY%, RuneScape

    ; Start timer to check if RuneScape is active window
    timer_random := ran(1821, 6129)
    SetTimer, CheckRuneScape, 50
    SetTimer, AFKLoop, %timer_random%
    SetTimer, GetRandomNumber, 1000
    Return

    ; The timer above will call this every 50ms
    CheckRuneScape:
        IfWinActive, RuneScape
        {
            ; Draw square for clicking in window
            Gui, 99: +E0x20 +AlwaysOnTop -Caption +Border +ToolWindow +LastFound
            WinSet, Transparent, 75
            Gui, 99: Color, Red
            Gui, 99: Show, x%ScreenBoxX% y%ScreenBoxY% w%boxSize% h%boxSize% NA
        }
        Else
        {
            ; If RuneScape is not active, remove the GUI render
            Gui, 99: Destroy
        }
    Return

    ; AFK loop
    AFKLoop:

        Random, areaX, x1, x2
        Random, areaY, y1, y2
        
        ; Send tray tip when clicker is ready
        random_time := GetRandomNumber()
        timer_seconds := random_time / 1000
        TrayTip, AFK Fishing, Clicking fishing spot`nTook: %timer_seconds% seconds, 3, 16

        ; Click RuneScape
        ControlClick, x%areaX% y%areaY%, RuneScape

        ; Setup next AFK loop
        SetTimer, AFKLoop, %random_time%
    Return

}
Return

; Generate a random number between 23091 and 90224
GetRandomNumber()
{
    Random, random_time, 10592, 21190
    return random_time
}