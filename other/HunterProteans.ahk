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
)
return


F5::

    ; random sleep timer
    random_time := ran(33565, 52462)

    ; get screen mouse coords
    CoordMode, Mouse, Screen
    MouseGetPos, XSmousePos, YSmousePos

    ; get window relative mouse coords
    CoordMode, Mouse, Relative
    MouseGetPos, XRmousePos, YRmousePos

    ; click runescape to start
    ControlClick, x%XRmousePos% y%YRmousePos%, RuneScape,,L,,
    
    ; Start timer to check if RuneScape is active window
    SetTimer, CheckRuneScape, 500
    SetTimer, AFKLoop, %random_time%

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
        ; setup 50x50 box of fuzzy randomizing pixels
        Random, XRmouseRandom, -25, 25
        Random, YRmouseRandom, -25, 25
        randomXClick := XRmousePos + XRmouseRandom
        randomYClick := YRmousePos + YRmouseRandom

        ControlClick, x%randomXClick% y%randomYClick%, RuneScape,,L,,
    return
Return


; emergency exit app
F7::
    TrayTip, AFK Proteans, Exiting, 3, 16
ExitApp
Return