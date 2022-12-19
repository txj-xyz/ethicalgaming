const scriptsDir = window.location.pathname
  .split("/")
  .slice(this.length + 1, 3)
  .join( "/" ) + "/scripts/";
  
const scriptsOtherDir =
  window.location.pathname
    .split("/")
    .slice(this.length + 1, 3)
    .join("/") + "/other/";

const pvm = [
  {
    name: "Nex: AoD 4s",
    type: "pvm",
    filePath: scriptsDir + "AOD4s.ahk",
    variable: "aodProcess",
    ranged: false,
    magic: true,
    melee: false,
    image: "images/Nex_chathead.png",
  },
  {
    name: "PvM 2:1 Rebinds",
    type: "pvm",
    filePath: scriptsDir + "PvM.ahk",
    variable: "pvmProcess",
    ranged: false,
    magic: true,
    melee: true,
    image: "images/app.png",
  },
  {
    name: "Hybridding (11)",
    type: "pvm",
    filePath: scriptsDir + "Hybridding.ahk",
    variable: "hybridProcess",
    ranged: false,
    magic: true,
    melee: true,
    image: "images/melee.png",
  },
  {
    name: "Vorago Hammer Climb (12)",
    type: "pvm",
    filePath: scriptsDir + "RagoHammerClimb.ahk",
    variable: "ragoHammerClimb",
    ranged: false,
    magic: false,
    melee: true,
    image: "images/Vorago_chathead.png",
  },
];

const skilling = [
  {
    name: "Skilling",
    filePath: scriptsOtherDir + "skilling.ahk",
    variable: "skillingProcess",
    image: "images/XP.png",
  },
];

const other = [
  {
    name: "Never Logout",
    type: "other",
    filePath: scriptsDir + "NeverLogout.ahk",
    variable: "neverLogProcess",
    image: "images/Logout_icon.png",
  },
  {
    name: "Razer Mouse Module",
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
];

const settings = [
  {
    name: "English Client",
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
];
