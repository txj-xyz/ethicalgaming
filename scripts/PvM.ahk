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

; K::StallOmni()
; Return

; F9::
; {
;     SayChat("Thank you for coming to your trial, unfortunately you failed")
;     SayChat("You may leave the group now :3")
; }
; Return