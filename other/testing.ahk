; #NoEnv
; #SingleInstance, Force
; #Include, components\functions.ahk
; #Include, components\coordinates.ahk
; #Include, components\lib\_imageSearch.ahk

; ; #Include, components\variables.ahk
; ; #Include, components\lib\_drawBox.ahk
; SendMode Input
; #IfWinActive RuneScape
; Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\XP.png

; ; ImageTracker(True,"busRFzRNrGNRsnzQUQ3p.png", "Fractured Staff of Armadyl", 11, 12, "Blue", 40)
; ; ImageTracker(True,"y1ZRFuyBQNy5lZ93anqt.png", "Dark Bow EOF", 13, 14, "Lime", 80)
; ; ImageTracker(True,"b1Wl102tOCE5A9NPiPol.png", "Familiar Special Attack", 77, 22, "Red", 60)
; ; ImageTracker(True,"lasc_boots.png", "Laceration Boots", 1, 2, "Red", 40)
; ; ImageSearch("q1NAtZ4qQws2C0Rz8Z8K.png",70)
; ; ImageTracker(True, "q1NAtZ4qQws2C0Rz8Z8K.png", "Melee Prayer", 63, 32, "Red", 70)

; ; Modify the (10) if you wish to adjust the alerting time
; time_to_check := 10 * 1000

; F1::
; {
;     color := GetPixelColorOnChange()
;     MsgBox, Your Familiar HP is low
; }
; Return

; GetPixelColorOnChange() {
;     CoordMode, Pixel, Screen
;     MouseGetPos, mouseX, mouseY
;     MsgBox, Left-click on the desired pixel to monitor its color.
;     KeyWait, LButton
;     PixelGetColor, initialColor, %mouseX%, %mouseY%
;     Loop {
;         PixelGetColor, currentColor, %mouseX%, %mouseY%
;         if (currentColor != initialColor) {
;             Return currentColor
;         }
;         Sleep, %time_to_check%
;     }
; }

; ; ImageTracker(DEBUG, ImageName, TextLabel, GUI_UUID, GUI_TEXT_UUID, GUI_COLOR, VARIATION_AMOUNT) {
; ;     ; Destroy possible duplicates
; ;     Gui, %GUI_TEXT_UUID%: Destroy
; ;     Gui, %GUI_UUID%: Destroy

; ;     ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *%VARIATION_AMOUNT%, *TransBlack %A_WorkingDir%\icons\%ImageName%
; ;     if ErrorLevel = 0
; ;     {
; ;         IfWinActive, RuneScape
; ;         {
; ;             ; GUI elements
; ;             boxSize := 20
; ;             boxWidth := 145
; ;             posX := FoundX - (boxSize / 2)
; ;             posY := FoundY - (boxSize / 2)

; ;             ; Text positions
; ;             textY := FoundY - 50
; ;             textX := FoundX - 150 / 2

; ;             ; Draw square for clicking in window
; ;             Gui, %GUI_UUID%: +E0x20 +AlwaysOnTop -caption +Border +ToolWindow +LastFound
; ;             WinSet, Transparent, 75
; ;             Gui, %GUI_UUID%: Color, %GUI_COLOR%
; ;             Gui, %GUI_UUID%: Show, y%posY% x%posX% w%boxSize% h%boxSize% NA
            
; ;             if (DEBUG = True) {
; ;                 ; Render help label debug text
; ;                 Gui, %GUI_TEXT_UUID%: +E0x20 +AlwaysOnTop -caption +Border +ToolWindow +LastFound
; ;                 ; WinSet, Transparent, 100
; ;                 Gui, %GUI_TEXT_UUID%: Color, %GUI_COLOR%
; ;                 Gui, %GUI_TEXT_UUID%: Add, Text,, %TextLabel%
; ;                 Gui, %GUI_TEXT_UUID%: Show, y%textY% x%textX% w%boxWidth% h25 NA
; ;             }
; ;         }
; ;     }
; ;     Return
; ; }

#NoEnv
#SingleInstance, Force
#IfWinActive RuneScape

CoordMode, Pixel, Screen
MouseGetPos, mouseX, mouseY
MsgBox, Left-click on the desired pixel to monitor its color.
Sleep, 5000
KeyWait, LButton
PixelGetColor, initialColor, %mouseX%, %mouseY%
Loop {
    PixelGetColor, currentColor, %mouseX%, %mouseY%
    if (currentColor != initialColor) {
        MsgBox, The pixel color has changed! Initial Color: %initialColor% Current Color: %currentColor%
    }
    Sleep, 1500
}