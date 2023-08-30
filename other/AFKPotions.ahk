#NoEnv
#SingleInstance, Force
#Include, components\functions.ahk
#Include, components\coordinates.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\XP.png


; Start the script
F1::
    PotionList := ["(9.6s) Elder Ovl Batch (x2)", "(4.8s) Elder Ovl Batch", "(16.8s) 14 3-Dose Potions"]

    ; create a formatted list from a pseudo array
    formattedString := joinString(PotionList, "|")

    Gui, Add, Text,, Select a potion from the list below:
    Gui, Add, DropDownList, vPotionChoice w200, %formattedString%
    Gui, Add, Button, Default, OK
    Gui, +AlwaysOnTop
    Gui, Show, , Choose a Potion
return

; This label will be triggered when the "OK" button is pressed
ButtonOK:
    Gui, Submit, NoHide
    Gui, Destroy

    switch (PotionChoice)
    {
        case "(9.6s) Elder Ovl Batch (x2)": {
            StartPotions(ran(9982,11022)) break
        }

        case "(4.8s) Elder Ovl Batch": {
            StartPotions(ran(5872,7162)) break
        }
        
        case "(16.8s) 14 3-Dose Potions": {
            StartPotions(ran(17282,19282)) break
        }
        
    }

return


; Function to loop create overloads
StartPotions(TimerWait){
    Loop {
        ; Starts at the top of max bank zoomed in
        ; -----------------------------------
        WaitOneTick()
        WaitOneTick()
        CoordClick("MaxBank", "L")
        ; -----------------------------------
        WaitOneTick()
        WaitOneTick()
        ControlSend,,{2 down},RuneScape
        sleep, ran(10,50)
        ControlSend,,{2 up},RuneScape
        ; -----------------------------------
        WaitOneTick()
        CoordClick("TopMaxBankWellDXP", "L")
        ; -----------------------------------
        WaitOneTick()
        WaitOneTick()
        ControlSend,,{Space down},RuneScape
        sleep, ran(10,50)
        ControlSend,,{Space up},RuneScape
        sleep, %TimerWait% ; wait for pot
        ; -----------------------------------
    }
}

; Exit app any time
LAlt::ExitApp, 0
Return