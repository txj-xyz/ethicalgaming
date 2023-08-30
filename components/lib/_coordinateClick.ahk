; Clicks on a given input coordinate (e.g: ``)
ClickCoords(XY_STRING, CLICK_TYPE) {
    if(XY_STRING = "") {
        Return False
    } else {
        ControlClick, %XY_STRING%, RuneScape,,%CLICK_TYPE%,,
    }
}