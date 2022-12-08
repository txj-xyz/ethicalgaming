const scriptsDir = window.location.pathname
  .split("/")
  .slice(this.length + 1, 3)
  .join("/") + "/scripts/";

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
];

const skilling = [
  {
    name: "Prayer",
    filePath: "C:/Users/ice/Desktop/Macros/RuneScape/Skilling/Prayer.ahk",
    variable: "prayerProcess",
    options: ["1", "2"],
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
  // {
  //   name: "Set Window Title",
  //   type: "other",
  //   filePath:
  //     "C:/Users/ice/Documents/GitHub/automated/utils/SetWindowTitle.ahk",
  //   variable: "setWindowTitleProcess",
  //   image: "images/Titles_icon.png",
  // },
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
