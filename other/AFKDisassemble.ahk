#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#Include, components\coordinates.ahk
#Include, components\lib\_imageSearch.ahk
#Include, components\lib\_coordinateClick.ahk
#Include, components\lib\_drawBox.ahk

SendMode Input
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Invention.png

F9::
    Loop
    {
        ; -----------------------------------------------
        foundImage := ImageFind("dissassemble.png", "SCREEN")
        ; -----------------------------------------------

        if (foundImage) {
            ClickCoords(foundImage, "L")
            ClickCoords(foundImage, "L")
            WaitHalfTick()
            CoordClick("FirstSlot", "L")

        } else {
            MsgBox, Disassemble spell not found please open your spellbook and try again.
            Reload
        }
        ; -----------------------------------------------

        time_var := ran(68122, 71283)
        Sleep, %time_var%
    }

Return

F10::
{

    ; Attempt to click the cancel button for invention otherwise reload the app
    ; -----------------------------------------------
    cancelButton := ImageFind("cancel_dissassemble.png", "SCREEN")
    ; -----------------------------------------------

    if (cancelButton) {
        ClickCoords(cancelButton, "L")
        Reload

    } else {
        Reload
    }
    ; -----------------------------------------------
}
Return