#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; Add resources for compiler (UI components)
FileInstall, icons\app.ico, icons\app.ico
FileInstall, icons\icon.ico, icons\icon.ico
FileInstall, Interface.ahk, Interface.ahk
FileInstall, utils\Neutron\Neutron.ahk, utils\Neutron\Neutron.ahk
FileInstall, utils\Neutron\index.html, utils\Neutron\index.html
FileInstall, utils\Neutron\js\data.js, utils\Neutron\js\data.js
FileInstall, utils\Neutron\js\jquery.min.js, utils\Neutron\js\jquery.min.js
FileInstall, utils\Neutron\js\utils.js, utils\Neutron\js\utils.js
FileInstall, utils\Neutron\css\bootstrap.min.css, utils\Neutron\css\bootstrap.min.css
FileInstall, utils\Neutron\css\index.css, utils\Neutron\css\index.css
FileInstall, utils\Neutron\images\app.png, utils\Neutron\images\app.png
FileInstall, utils\Neutron\images\ArchGlacor.png, utils\Neutron\images\ArchGlacor.png
FileInstall, utils\Neutron\images\brazil.png, utils\Neutron\images\brazil.png
FileInstall, utils\Neutron\images\Clue_scroll.png, utils\Neutron\images\Clue_scroll.png
FileInstall, utils\Neutron\images\france.png, utils\Neutron\images\france.png
FileInstall, utils\Neutron\images\germany.png, utils\Neutron\images\germany.png
FileInstall, utils\Neutron\images\Huge_protean_pack.png, utils\Neutron\images\Huge_protean_pack.png
FileInstall, utils\Neutron\images\Invention.png, utils\Neutron\images\Invention.png
FileInstall, utils\Neutron\images\Logout_icon.png, utils\Neutron\images\Logout_icon.png
FileInstall, utils\Neutron\images\magic.png, utils\Neutron\images\magic.png
FileInstall, utils\Neutron\images\melee.png, utils\Neutron\images\melee.png
FileInstall, utils\Neutron\images\Nex_chathead.png, utils\Neutron\images\Nex_chathead.png
FileInstall, utils\Neutron\images\Nex_chathead_hammer.png, utils\Neutron\images\Nex_chathead_hammer.png
FileInstall, utils\Neutron\images\portugal.png, utils\Neutron\images\portugal.png
FileInstall, utils\Neutron\images\Raksha.png, utils\Neutron\images\Raksha.png
FileInstall, utils\Neutron\images\ranged.png, utils\Neutron\images\ranged.png
FileInstall, utils\Neutron\images\RangedSkill.png, utils\Neutron\images\RangedSkill.png
FileInstall, utils\Neutron\images\razer.ico, utils\Neutron\images\razer.ico
FileInstall, utils\Neutron\images\razer.png, utils\Neutron\images\razer.png
FileInstall, utils\Neutron\images\Solak_chathead.png, utils\Neutron\images\Solak_chathead.png
FileInstall, utils\Neutron\images\Strange_compass.png, utils\Neutron\images\Strange_compass.png
FileInstall, utils\Neutron\images\Titles_icon.png, utils\Neutron\images\Titles_icon.png
FileInstall, utils\Neutron\images\united-kingdom.png, utils\Neutron\images\united-kingdom.png
FileInstall, utils\Neutron\images\Vorago_chathead.png, utils\Neutron\images\Vorago_chathead.png
FileInstall, utils\Neutron\images\World_map_icon.png, utils\Neutron\images\World_map_icon.png
FileInstall, utils\Neutron\images\XP.png, utils\Neutron\images\XP.png
FileInstall, utils\Neutron\images\Zamorak_chathead.png, utils\Neutron\images\Zamorak_chathead.png

Run, Interface.ahk