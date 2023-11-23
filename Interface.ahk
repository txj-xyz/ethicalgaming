/*
	Compile Me!
	
	This example is designed to show how you can use third party frameworks like
	Bootstrap to build advanced user interfaces, while still keeping all the
	code local. This script can be compiled and still function fine without the
	need to extract any files to a temporary directory.
	
	As this example is more advanced, it assumes a stronger familiarity with the
	technology and may gloss over some parts more than other examples. If you're
	just getting started it may be helpful to work with some of the other
	example scripts first.
*/
Menu, Tray, Icon, %A_ScriptDir%\icons\app.ico

#NoEnv
SetBatchLines, -1

; Include the Neutron library
#Include utils/Neutron/Neutron.ahk

; Create a new NeutronWindow and navigate to our HTML page
global neutron := new NeutronWindow()
neutron.Load("utils/Neutron/index.html")

; Use the Gui method to set a custom label prefix for GUI events. This code is
; equivalent to the line `Gui, name:+LabelNeutron` for a normal GUI.
neutron.Gui("+LabelNeutron")

; Show the Neutron window
neutron.Show()
return

; FileInstall all your dependencies, but put the FileInstall lines somewhere
; they won't ever be reached. Right below your AutoExecute section is a great
; location!
FileInstall, Bootstrap.html, Bootstrap.html
FileInstall, bootstrap.min.css, bootstrap.min.css
FileInstall, bootstrap.min.js, bootstrap.min.js
FileInstall, jquery.min.js, jquery.min.js

; The built in GuiClose, GuiEscape, and GuiDropFiles event handlers will work
; with Neutron GUIs. Using them is the current best practice for handling these
; types of events. Here, we're using the name NeutronClose because the GUI was
; given a custom label prefix up in the auto-execute section.
NeutronClose:
ExitApp
return

global aodProcess := ""
global pvmProcess := ""
global ragoHammerClimb := ""
global neverLogProcess := ""
global skillingProcess := ""
global razerModule := ""
global hybridProcess := ""
global afkWave4ZukProcess := ""
global coordsProcess := ""
global rakshaProcess := ""
global zamorakProcess := ""
global afkHelwyrProcess := ""
global testingProcess := ""
global familiarProccess := ""

Start(neutron, event, name, filePath, variable)
{
	Run, %filePath%,,, PID001
	%variable% := PID001
	TrayTip, %name%, Started, 20, 16
}

SettingsStart(neutron, event, name, filePath)
{
	Run, %filePath%
	TrayTip, %name%, Started, 20, 16
}

Stop(neutron, event, name, variable)
{
	processId := %variable%
	Run, taskkill /pid %processId%,,hide
	%variable% := ""
	TrayTip, %name%, Stopped, 20, 16
}

Button(neutron, event)
{
	MsgBox, % "You clicked " event.target.innerText
}