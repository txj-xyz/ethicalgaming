#NoEnv
#SingleInstance, Force
#MaxThreadsPerHotkey 2
SendMode Input

; Launch Instructions when starting script
MsgBox, 
(
    --- Vindicta AFK v1.0.3 ---
    F8 = Start
    F5 = Pause
    F6 = Exit
)


; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; Settings for this tool, please configure your keybinds below
; To get a list of keys visit here: https://www.autohotkey.com/docs/v1/KeyList.htm
; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

; Options
loot_enabled := True   ; True / False
sticks_enabled := True ; True / False

; Keys
overloads_key := "h"
penance_powder := "r"
animate_dead := "t"
sticks := "j"

; ---------------------------------------------------------------
; ---------------------------------------------------------------
; ---------------------------------------------------------------
; ---------------------------------------------------------------
; ------------------ Internal Functions Below -------------------
; ---------------------------------------------------------------














; Start Script
F8::
    ; Game Timers for PVM (Minutes)
    counter_ovl := 0
    counter_AD := 0
    counter_sticks := 0
    counter_powder := 0

    ; loop 10 times -> 1hr
    Loop, 70
    {

        ; RS3 Client PID
        rsPid := __checkClient()
        
        ; loot
        if (loot_enabled) {
            ControlSend,, {Space}, ahk_pid %rsPid%
        }
        WaitHalfTick()
        
        ; Wait 7 minutes for Overloads
        if (counter_ovl = 7){
            ControlSend,, {%overloads_key%}, ahk_pid %rsPid%
            WaitHalfTick()
            
            counter_ovl := 0
        }
        
        ; Wait 10 minutes for Sticks
        if (counter_sticks = 10){

            ; Check to see if the sticks are enabled and send those if so.
            if (sticks_enabled) {
                ControlSend,, {%sticks%}, ahk_pid %rsPid%
            }
            WaitHalfTick()

            counter_sticks := 0
        }

        ; Wait 11 minutes for Animate Dead
        if (counter_AD = 11){
            ControlSend,, {%animate_dead%}, ahk_pid %rsPid%
            WaitHalfTick()

            counter_AD := 0
        }

        ; Wait 29 minutes for penance powder
        if (counter_powder = 29){
            ControlSend,, {%penance_powder%}, ahk_pid %rsPid%
            WaitHalfTick()

            counter_powder := 0
        }

        ; Increment Counters
        counter_ovl++
        counter_AD++
        counter_sticks++
        counter_powder++

        ; Wait full minute at least for doing next loop tick
        Sleep % ran(60000, 60150)
    }
return

; ---------------------------------------------------------------

;gives a random number between those two specifieds
ran(min,max){
    random, ran, min, max
    return ran
}

; Pause Script
F5::Suspend

; Exit Script
F6::ExitApp


; Wait Game Ticks
WaitHalfTick() {
    Sleep % ran(300,311)
}

; Check to see if the RS3 client is open if not crash the script
__checkClient() {
    WinGet, pid, PID, ahk_exe rs2client.exe
    if (!pid) {
        MsgBox, "RuneScape client was not found.`nExiting Script"
        ExitApp, 1
    }

    return pid
}