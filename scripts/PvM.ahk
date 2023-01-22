#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\magic.png

; sbs + disrupt
+C::SBSDisrupt()
Return

; sbs + veng
+V::SBSVeng()
Return

; sbs + heal other
+B::SBSHealOther()
Return

; grico + pools bd switch
; F4::
; {
;     Cast("quiver",30)
;     Cast("grico_switch",30)
; }
; Return


F11::
    Send, {Enter down}
    Send, {Enter up}
    Sleep, 150
    Send, Selling pwand 2.3b
    Sleep, 150
    Send, {Enter down}
    Send, {Enter up}
Return