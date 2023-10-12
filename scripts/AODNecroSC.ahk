#NoEnv
#SingleInstance, Force
#Include, components\functions.ahk
#Include, components\variables.ahk

#MaxThreadsPerHotkey 2
SendMode Input
#IfWinActive RuneScape
Menu, Tray, Icon, %A_WorkingDir%\utils\Neutron\images\Nex_chathead.png

; Razer Naga -> Bottom Right Key (12)
; Specifically release hammer with Death Skulls
F24::
{
    Cast("tc",30)
    Cast("smoke_cloud",200)
    Cast("mainhand",70)
    Cast("death_skulls",70)
    ; WaitGCD()
    ; Send, q
}
Return

