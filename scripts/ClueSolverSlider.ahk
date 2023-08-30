#IfWinActive RuneScape

SetTimer, GetRandom, 50

rand_timer := ran(55,100)

GetRandom:
    rand_timer := ran(55,100)
Return

; Set keypress delay for automation
SetKeyDelay,%rand_timer%,60

; Activation key
F12::
    var := RegexReplace(clipboard, "[ \t]*\d+[ \t]*\.[ \t]*", "")
    var := StrReplace(var, "down" , "{down}")
    var := RegexReplace(var, "\s+", "")
    var := StrReplace(var, "right" , "{right}")
    var := StrReplace(var, "left" , "{left}")
    var := StrReplace(var, "up" , "{up}")
Send % var

return


ALT::ExitApp
Return