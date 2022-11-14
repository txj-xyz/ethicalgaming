#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

F1::
  MsgBox,
  (
    F1 = Show this dialog
    F6 = Afk clicking for proteans
    Left Alt = Stop and Reload the script
  )
return

F6:: ;click every 288s - 300s
  Loop {
    LeftClick()
    sleep, % ran(288000, 300000)
  }
return

; Escape to terminate the app.
LAlt::Reload