const scriptsDir = window.location.pathname
  .split("/")
  .slice(this.length + 1, -3)
  .join( "/" ) + "/scripts/";
  
const scriptsOtherDir =
  window.location.pathname
    .split("/")
    .slice(this.length + 1, -3)
    .join("/") + "/other/";

const pvm = [
    {
        name: "Nex: Angel of Death (Hybrid)",
        type: "pvm",
        filePath: scriptsDir + "AODHybrid.ahk",
        variable: "aodProcess",
        magic: true,
        melee: true,
        image: "images/Nex_chathead.png",
        tooltip: "Hammer Stall (CapsLock)<br>Hybrid Switch (11)<br>Auto -> Deto -> Gstaff(12)",
    },
    {
        name: "Nex: Angel of Death (SC)",
        type: "pvm",
        filePath: scriptsDir + "AODNecroSC.ahk",
        variable: "aodProcess",
        necro: true,
        image: "images/Nex_chathead.png",
        tooltip: "TC -> SC -> MH+OH (12)",
    },
    {
        name: "PvM 2:1 Rebinds",
        type: "pvm",
        filePath: scriptsDir + "PvM.ahk",
        variable: "pvmProcess",
        magic: true,
        melee: true,
        image: "images/app.png",
        tooltip: "Contains 2:1 remaps for common utilities<br>(e.g SBS -> Veng)",
    },
    {
        name: "Hybridding",
        type: "pvm",
        filePath: scriptsDir + "Hybridding.ahk",
        variable: "hybridProcess",
        magic: true,
        melee: true,
        image: "images/melee.png",
        tooltip: "Naga Pro Key (11)",
    },
    {
        name: "Vorago",
        type: "pvm",
        filePath: scriptsDir + "RagoHammerClimb.ahk",
        variable: "ragoHammerClimb",
        magic: true,
        melee: true,
        image: "images/Vorago_chathead.png",
        tooltip: "Escape BD (10)<br>Grico Switch(11)<br>Hammer Climbing (12)",
    },
    {
        name: "Zamorak",
        type: "pvm",
        filePath: scriptsDir + "Zamorak.ahk",
        variable: "zamorakProcess",
        magic: true,
        image: "images/Zamorak_chathead.png",
        tooltip: "2:1 Spirit Shield (*)",
    },
    {
        name: "Auto Familiar Special",
        type: "pvm",
        filePath: scriptsDir + "FamiliarSpec.ahk",
        variable: "familiarProccess",
        ranged: true,
        magic: true,
        melee: true,
        necro: true,
        image: "images/kalg.png",
        tooltip: "ImageSearch matched familiar special attack",
    },
];

const skilling = [
    {
        name: "Skilling",
        tooltip: "Press F1 to get started",
        filePath: scriptsOtherDir + "skilling.ahk",
        variable: "skillingProcess",
        image: "images/XP.png",
    },
    {
        name: "Potions",
        tooltip: "Press F1 to get started",
        filePath: scriptsOtherDir + "AFKPotions.ahk",
        variable: "skillingProcess",
        image: "images/XP.png",
    },
    {
        name: "AFK Disassemble",
        tooltip: "<i>Items must be in the first slot</i><br>Press F9 start<br>Press F10 stop<br>` to Exit",
        filePath: scriptsOtherDir + "AFKDisassemble.ahk",
        variable: "skillingProcess",
        image: "images/Invention.png",
    },
    {
        name: "AFK Rituals",
        tooltip: "<i>Items must be in the first slot</i><br>Press F9 start<br>Press F10 stop<br>` to Exit",
        filePath: scriptsOtherDir + "AFKRituals.ahk",
        variable: "skillingProcess",
        image: "images/Invention.png",
    },
    {
        name: "AFK Harps",
        filePath: scriptsOtherDir + "AFKHarps.ahk",
        variable: "skillingProcess",
        image: "images/harp.png",
        tooltip: "<i>Reset compass<br>Zoom all the way in before starting</i>",
    },
    {
        name: "AFK Dummies",
        filePath: scriptsOtherDir + "AFKDummies.ahk",
        variable: "skillingProcess",
        image: "images/dummy.png",
        tooltip: "<i>Stand on the Invention Bank tile<br>Reset compass<br>Zoom all the way out before starting</i>",
    },
    {
        name: "Fishing",
        filePath: scriptsDir + "Fishing.ahk",
        variable: "skillingProcess",
        image: "images/fishing.png",
        tooltip: "Press F2 to start clicking where you pressed F2",
    },
    {
        name: "Fletching",
        filePath: scriptsOtherDir + "FletchingClick.ahk",
        variable: "skillingProcess",
        image: "images/Fletching.png",
        tooltip: "Fletches in the background (D -> Space Bar)",
    },
];

const other = [
    {
        name: "Never Logout",
        tooltip: "Send camera functions to RuneScape in the background",
        type: "other",
        filePath: scriptsDir + "NeverLogout.ahk",
        variable: "neverLogProcess",
        image: "images/Logout_icon.png",
    },
    {
        name: "Razer Mouse Module",
        tooltip: "This module controls buttons (10,11,12) on the Razer Naga Pro",
        type: "other",
        filePath: scriptsDir + "RazerModule.ahk",
        variable: "razerModule",
        image: "images/razer.png",
    },
    {
        name: "AFK Wave 4 Zuk",
        type: "other",
        filePath: scriptsDir + "Wave4AFK.ahk",
        variable: "afkWave4ZukProcess",
        image: "images/app.png",
    },
    {
        name: "AFK Helwyr",
        type: "other",
        filePath: scriptsDir + "AFKHelwyr.ahk",
        variable: "afkHelwyrProcess",
        image: "images/app.png",
    },
    {
        name: "testing",
        type: "other",
        filePath: scriptsOtherDir + "testing.ahk",
        variable: "testingProcess",
        image: "images/app.png",
    },
];

const settings = [
  {
    name: "English Client",
    tooltip: "Starts the Steam client by default",
    type: "settings",
    filePath: "steam://rungameid/1343400",
    image: "images/united-kingdom.png",
  },
  {
    name: "German Client",
    type: "settings",
    filePath: "rs-launch://www.runescape.com/l=1/jav_config.ws",
    image: "images/germany.png",
  },
  {
    name: "French Client",
    type: "settings",
    filePath: "rs-launch://www.runescape.com/l=2/jav_config.ws",
    image: "images/france.png",
  },
  {
    name: "Portugese Client",
    type: "settings",
    filePath: "rs-launch://www.runescape.com/l=3/jav_config.ws",
    image: "images/brazil.png",
  },
  {
    name: "Coordinate Selector",
    tooltip: "Press or Hold Q to select coordinates<br>Press ESC stop",
    type: "settings",
    filePath: scriptsOtherDir + "find-coords.ahk",
    variable: "coordsProcess",
    image: "images/Invention.png",
  },
];
