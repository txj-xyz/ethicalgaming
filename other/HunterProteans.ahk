#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 4
SetControlDelay -1
SetTitleMatchMode, 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Huge_protean_pack.png

F1::
    MsgBox,
(
F1 = Help Dialog
F5 = AFK Clicking
F7 = Exit App
F8 = Reload App
)
return

F5::
    ; get screen mouse coords
    CoordMode, Mouse, Screen
    MouseGetPos, XSmousePos, YSmousePos

    ; get window relative mouse coords
    CoordMode, Mouse, Relative
    MouseGetPos, XRmousePos, YRmousePos

    ; click runescape to start
    ControlClick, x%XRmousePos% y%YRmousePos%, RuneScape,,L,,
    
    ; Start timer to check if RuneScape is active window
    timer_random := ran(1000,5000)
    SetTimer, GetRandomNumber, 1000
    SetTimer, CheckRuneScape, 50
    SetTimer, AFKLoop, %timer_random%

    

    ; the timer above will call this every 500ms
    CheckRuneScape:
        IfWinActive, ahk_exe rs2client.exe
        {

            ; re-calculate the coordinate difference from new window position if the window is moved
            WinGetPos, XRunescape, YRunescape, Width, Height, ahk_exe rs2client.exe
            
            ; new coords for the box render
            XXboxDraw := XRmousePos + XRunescape - 25
            YYboxDraw := YRmousePos + YRunescape - 25
            
            ; draw square for clicking in window
            Gui, 99: +E0x20 +AlwaysOnTop -caption +Border +ToolWindow +LastFound
            WinSet, Transparent, 75
            Gui, 99: Color, Blue
            Gui, 99: Show, x%XXboxDraw% y%YYboxDraw% w50 h50 NA
        }
        Else
        {
            ; if runescape is not active remove the gui render
            Gui, 99: Destroy
        }
    return

    ; AFK loop
    AFKLoop:

        ; setup random sleep for the AFK timer
        Sleep, %random_time%

        ; setup 50x50 box of fuzzy randomizing pixels
        Random, XRmouseRandom, -25, 25
        Random, YRmouseRandom, -25, 25
        randomXClick := XRmousePos + XRmouseRandom
        randomYClick := YRmousePos + YRmouseRandom

        ; send traytip when clicker is ready
        timer_seconds := random_time / 1000
        TrayTip, AFK Clicking, Clicking window now `nTook: %timer_seconds% seconds, 3, 16

        ; click runescape
        ControlClick, x%randomXClick% y%randomYClick%, RuneScape,,L,,
    return

    ; set a local scope random number variable that changes every 1000ms
    GetRandomNumber:
        random_time := 6000
        Random, random_time, 23565, 42462
    return
Return

; emergency exit app
F7::
    TrayTip, AFK Skilling, Exiting, 3, 16
ExitApp
Return

; emergency exit app
F8::
    TrayTip, AFK Skilling, Reloading all modules, 3, 16
Reload
Return