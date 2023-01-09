#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\coordinates.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 4
SetControlDelay -1
SetTitleMatchMode, 2
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\harp.png




; click runescape to start
Random, areaX, Coords.AFKHarps.X1, Coords.AFKHarps.X2
Random, areaY, Coords.AFKHarps.Y1, Coords.AFKHarps.Y2

; variables
x1Begin := Coords.AFKHarps.X1
x2End := Coords.AFKHarps.X2
y1Begin := Coords.AFKHarps.Y1
y1End := Coords.AFKHarps.Y2

; draw coords in box
wid := abs(x1Begin - x2End), hig := abs(y1Begin - y1End)
Xpos := (x1Begin < x2End) ? x1Begin : x2End
Ypos := (y1Begin < y1End) ? y1Begin : y1End


ControlClick, x%areaX% y%areaY%, RuneScape,,%InputType%,,

; Start timer to check if RuneScape is active window
timer_random := ran(1000,5000)
SetTimer, GetRandomNumber, 1000
SetTimer, CheckRuneScape, 50
SetTimer, AFKLoop, %timer_random%


; the timer above will call this every 500ms
CheckRuneScape:
    IfWinActive, ahk_exe rs2client.exe
    {
        ; draw square for clicking in window
        Gui, 99: +E0x20 +AlwaysOnTop -caption +Border +ToolWindow +LastFound
        WinSet, Transparent, 75
        Gui, 99: Color, Red
        Gui, 99: Show, x%Xpos% y%Ypos% w%wid% h%hig% NA
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
    TrayTip, AFK Harps, Clicking window now `nTook: %timer_seconds% seconds, 3, 16

    ; click runescape
    ControlClick, x%areaX% y%areaY%, RuneScape,,%InputType%,,
return

; set a local scope random number variable that changes every 1000ms
GetRandomNumber:
    random_time := 6000
    Random, random_time, 23565, 42462
return