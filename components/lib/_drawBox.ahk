#Include, components\coordinates.ahk

; Draw a box from object coords
DrawBox(GUI_UUID, COORD_OBJ, GUI_COLOR, BOX_SIZE) {
    
    ; Is the GUi currently being drawn?
    DRAWN := false

    ; Overlay coordinates from object
    OVERLAY_X1 := Coords[COORD_OBJ].X1 - BOX_SIZE / 2
    OVERLAY_Y1 := Coords[COORD_OBJ].Y1 - BOX_SIZE / 2

    ; Dimensions of the box to draw
    BoxSize_W := BOX_SIZE
    BoxSize_H := BOX_SIZE

    ; Loop, 
    ; {
        IfWinActive, RuneScape
        {
            if (DRAWN = false) {
                Gui, %GUI_UUID%: +E0x20 +AlwaysOnTop -Caption +Border +ToolWindow +LastFound
                WinSet, Transparent, 75
                Gui, %GUI_UUID%: Color, %GUI_COLOR%
                Gui, %GUI_UUID%: Show, x%OVERLAY_X1% y%OVERLAY_Y1% w%BoxSize_W% h%BoxSize_H% NA
                DRAWN := true
            }
        }
        Else
        {
            Gui, %GUI_UUID%: Destroy
            DRAWN := false
        }

        ; Sleep, 50
    ; }
    Return
}