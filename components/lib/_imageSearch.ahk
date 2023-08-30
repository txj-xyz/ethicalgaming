; Clicks on matched image coordinates and can search regions (@returns `boolean`)
ImageClick(ImageName, SEARCH_REGION, CLICK_TYPE) {
    if (SEARCH_REGION = "SCREEN") {
        ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *70, %A_WorkingDir%\icons\%ImageName%
        if ErrorLevel = 0
        {
            ControlClick, x%FoundX% y%FoundY%, RuneScape,,%CLICK_TYPE%,,
            Return True
        }
        Else {
            Return False
        }
        Return True
    }
    Else
    {
        ; Define finding the region of inventory from `coordinates.ahk`
        ; This determines what screen region to search
        RegionX1 := Coords[SEARCH_REGION].X1
        RegionY1 := Coords[SEARCH_REGION].Y1
        RegionX2 := Coords[SEARCH_REGION].X2
        RegionY2 := Coords[SEARCH_REGION].Y2

        ImageSearch, FoundX, FoundY, %RegionX1%, %RegionY1%, %RegionX2%, %RegionY2%, *70, %A_WorkingDir%\icons\%ImageName%
        if (ErrorLevel = 0) {
            ControlClick, x%FoundX% y%FoundY%, RuneScape,,%CLICK_TYPE%,,
            Return True
        }
        Else {
            Return False
        }
        Return True
    }

}


; Search for an image and return coordinates (@returns `boolean | string`)
ImageFind(ImageName, SEARCH_REGION) {
    if (SEARCH_REGION = "SCREEN") {
        ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *70, %A_WorkingDir%\icons\%ImageName%
        if ErrorLevel = 0
        {
            ; Make fuzzy coords to return
            FoundFuzzyX := FoundX + ran(1,5)
            FoundFuzzyY := FoundY + ran(1,5)

            foundPosition := "x" . FoundFuzzyX . " y" . FoundFuzzyY
            Return, foundPosition
        }
        Else {
            Return False
        }
        Return, foundPosition
    }
    Else
    {
        ; Define finding the region of inventory from `coordinates.ahk`
        ; This determines what screen region to search
        RegionX1 := Coords[SEARCH_REGION].X1
        RegionY1 := Coords[SEARCH_REGION].Y1
        RegionX2 := Coords[SEARCH_REGION].X2
        RegionY2 := Coords[SEARCH_REGION].Y2

        ImageSearch, FoundX, FoundY, %RegionX1%, %RegionY1%, %RegionX2%, %RegionY2%, *70, %A_WorkingDir%\icons\%ImageName%
        if (ErrorLevel = 0) {
            ; Make fuzzy coords to return
            FoundFuzzyX := FoundX + ran(1,5)
            FoundFuzzyY := FoundY + ran(1,5)

            foundPosition := "x" . FoundFuzzyX . " y" . FoundFuzzyY
            Return, foundPosition
        }
        Else {
            Return False
        }
        Return, foundPosition
    }

}


; Draw a GUI over a tracked image
ImageTracker(DEBUG, ImageName, TextLabel, GUI_UUID, GUI_TEXT_UUID, GUI_COLOR, VARIATION_AMOUNT) {
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