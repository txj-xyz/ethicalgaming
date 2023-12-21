; Draw a GUI over a tracked image
ImageTracker(DEBUG, ImageName, TextLabel, GUI_UUID, GUI_TEXT_UUID, GUI_COLOR, VARIATION_AMOUNT) {
    MsgBox, %DEBUG%, %ImageName%, %TextLabel%, %GUI_UUID%, %GUI_TEXT_UUID%, %GUI_COLOR%, %VARIATION_AMOUNT%
    ; Destroy possible duplicates
    Gui, %GUI_TEXT_UUID%: Destroy
    Gui, %GUI_UUID%: Destroy

    CoordMode, Pixel, Screen

    ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%VARIATION_AMOUNT%, *TransBlack %A_WorkingDir%\icons\%ImageName%
    if ErrorLevel = 0
    {
        IfWinActive, RuneScape
        {
            ; GUI elements
            boxSize := 20
            boxWidth := 145
            posX := FoundX - (boxSize / 2)
            posY := FoundY - (boxSize / 2)

            ; Text positions
            textY := FoundY - 50
            textX := FoundX - 150 / 2

            ; Draw square for clicking in window
            Gui, %GUI_UUID%: +E0x20 +AlwaysOnTop -caption +Border +ToolWindow +LastFound
            WinSet, Transparent, 75
            Gui, %GUI_UUID%: Color, %GUI_COLOR%
            Gui, %GUI_UUID%: Show, y%posY% x%posX% w%boxSize% h%boxSize% NA
            ; MsgBox, found at y%FoundY% x%FoundX%
            
            if (DEBUG = True) {
                ; Render help label debug text
                Gui, %GUI_TEXT_UUID%: +E0x20 +AlwaysOnTop -caption +Border +ToolWindow +LastFound
                ; WinSet, Transparent, 100
                Gui, %GUI_TEXT_UUID%: Color, %GUI_COLOR%
                Gui, %GUI_TEXT_UUID%: Add, Text,, %TextLabel%
                Gui, %GUI_TEXT_UUID%: Show, y%textY% x%textX% w%boxWidth% h25 NA
            }
        }
    }
    Return
}