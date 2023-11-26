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
        ranged: true,
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
    {
        name: "Crafting",
        filePath: scriptsOtherDir + "AFKProteanHides.ahk",
        variable: "skillingProcess",
        image: "images/Crafting.png",
        tooltip: "Proteans in the background (S -> Space Bar)",
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
    }
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
        name: "OSRS (RuneLite)",
        tooltip: "Starts Jagex Launcher RuneLite",
        type: "settings",
        filePath: 'C:/Program Files (x86)/Steam/steam.exe -applaunch 1343370 "C:/Program Files (x86)/Jagex Launcher/JagexLauncher.exe %command%"',
        image: "images/xfSrEBc3.jpg",
    },
];
