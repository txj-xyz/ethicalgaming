#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#Include, components\coordinates.ahk
#Include, components\lib\_imageSearch.ahk
#Include, components\lib\_coordinateClick.ahk
; #Include, components\lib\_drawBox.ahk
#IfWinActive RuneScape
SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Invention.png

F9::
{
    Loop
    {
        ; -----------------------------------------------
        foundImage := ImageFind("altar_ritual.png", "SCREEN")
        ; -----------------------------------------------

        if (foundImage) {
            MsgBox, Ritual completed.
            Sleep, 10 * 1000
        }
        
        ; -----------------------------------------------
        Sleep, 150
    }
}
Return