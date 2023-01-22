#NoEnv
#SingleInstance, Force
#Include, components\variables.ahk
#Include, components\functions.ahk
#MaxThreadsPerHotkey 2
SendMode Input
; #IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Nex_chathead.png

; CapsLock -> MH + BD OH
CapsLock::
    Cast("mainhand",30)
    Cast("bd_offhand",30)
Return

; Razer Naga -> Bottom Left Key (10)
F23::IngenSGB()
Return

; Ice auto before specs
; b::
;     Cast("ice_barrage",30)
;     Cast("weapon_special",30)
; Return

; grico switch
F22::
    Cast("quiver",30)
    Cast("ecb",30)
Return

; Auto -> Deto -> Gstaff (1t method)
; ^a::
;     Send, {Up}
;     Send, {%ice_barrage% down}
;     Send, {%ice_barrage% up}
    
;     ; Cast("detonate",75)
;     ; Cast("eof_spec",25)
; Return

; ALT+E call familiar + spec
; !e::
;     Cast("call_familiar",30)
;     Cast("familiar_special",30)
; Return