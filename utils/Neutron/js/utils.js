var globalState = [];

Array.prototype.some = function (callback, thisArg) {
    for (var i = 0; i < this.length; i++) {
        if (callback.call(thisArg, this[i], i, this)) {
            return true;
        }
    }
    return false;
};

const pvmContainer = document.getElementById("pvm-container");
const skillingContainer = document.getElementById("skilling-container");
const otherContainer = document.getElementById("other-container");
const settingsContainer = document.getElementById("settings-container");

// Creates an element for a certain category and attaches it to a provided container.
function createCategoryElement(script, container) {
    // script
    const listContainer = document.createElement("li");
    listContainer.setAttribute("class", "list-group-item script");
    // script container
    const scriptContainer = document.createElement("div");
    scriptContainer.setAttribute("class", "script-container");
    // icon container
    if (script.image) {
        const iconContainer = document.createElement("div");
        // Custom tooltips from `tippy.js`
        if (script.tooltip) {
            iconContainer.setAttribute("data-tippy-arrow", "true");
            iconContainer.setAttribute("data-tippy-followCursor", "true");
            iconContainer.setAttribute("data-tippy", "<b>" + script.tooltip + "</b>");
        }
        iconContainer.setAttribute("class", "script-icon-container");
        // chathead icon
        const chatheadIcon = document.createElement("img");
        chatheadIcon.setAttribute("class", "script-icon");
        chatheadIcon.setAttribute("src", script.image);
        iconContainer.appendChild(chatheadIcon);
        scriptContainer.appendChild(iconContainer);
    }
    // text
    const textElement = document.createElement("div");
    textElement.setAttribute("class", "ml-2");
    textElement.innerText = script.name;
    // right container
    const rightContainer = document.createElement("div");
    rightContainer.setAttribute("class", "right-container");

    if (script.type === "pvm") {
        const mageIcon = document.createElement("img");
        mageIcon.setAttribute("src", "images/magic.png");
        mageIcon.setAttribute("alt", "magic");
        const meleeIcon = document.createElement("img");
        meleeIcon.setAttribute("src", "images/melee.png");
        meleeIcon.setAttribute("alt", "melee");
        const rangedIcon = document.createElement("img");
        rangedIcon.setAttribute("src", "images/ranged.png");
        rangedIcon.setAttribute("alt", "ranged");
        const necroIcon = document.createElement("img");
        necroIcon.setAttribute("src", "images/necro.png");
        necroIcon.setAttribute("alt", "necro");
        script.magic ? mageIcon.setAttribute("class", "style-icon") : mageIcon.setAttribute("class", "style-icon style-disabled");
        script.melee ? meleeIcon.setAttribute("class", "style-icon") : meleeIcon.setAttribute("class", "style-icon style-disabled");
        script.ranged ? rangedIcon.setAttribute( "class", "style-icon" ) : rangedIcon.setAttribute( "class", "style-icon style-disabled" );
        script.necro ? necroIcon.setAttribute("class", "style-icon") : necroIcon.setAttribute("class", "style-icon style-disabled");
        rightContainer.appendChild(mageIcon);
        rightContainer.appendChild(meleeIcon);
        rightContainer.appendChild(rangedIcon);
        rightContainer.appendChild(necroIcon);
    }

    // Buttons
    const buttonContainer = document.createElement("div");
    if (script.type !== "settings") {
        // Start PVMing Scripts here
        const startButton = document.createElement("button");
        startButton.setAttribute("class", "btn btn-success btn-sm");
        startButton.innerText = "Start";
        // Add listener for each button
        startButton.addEventListener( "click", function ( name ) {
            // prettier-ignore
            if (globalState.some(function (variable) { return script.variable === variable;})) return alert(script.variable + "is already running.");
            ahk.Start(event, script.name, script.filePath, script.variable);
            globalState.push(script.variable);
            startButton.hidden = true;
            stopButton.hidden = false;
        });
        buttonContainer.appendChild(startButton);

        // Stop PVMing Scripts here
        const stopButton = document.createElement("button");
        stopButton.setAttribute("class", "btn btn-danger btn-sm");
        stopButton.innerText = "Stop";
        stopButton.hidden = true;
        // Add listener for each button
        stopButton.addEventListener( "click", function ( name ) {
            //prettier-ignore
            if (globalState.some( function ( variable ) { return script.variable === variable; })) {
                globalState.splice( globalState.indexOf( script.variable ), 1 );
                ahk.Stop(event, script.name, script.variable);
                startButton.hidden = false;
                stopButton.hidden = true;
            } else {
                return alert(script.variable + "is not running")
            }
        });
        buttonContainer.appendChild(stopButton);
    } else {
        const startButton = document.createElement("button");
        const onclickStartString = "ahk.SettingsStart(event, '" + script.name + "', '" + script.filePath + "')";
        startButton.setAttribute("onclick", onclickStartString);
        startButton.setAttribute("class", "btn btn-success btn-sm");
        startButton.innerText = "Start";
        buttonContainer.appendChild(startButton);
    }

    rightContainer.appendChild(buttonContainer);

    scriptContainer.appendChild(textElement);
    scriptContainer.appendChild(rightContainer);
    listContainer.appendChild(scriptContainer);

    container.appendChild(listContainer);
}

pvm.forEach(initPvM);
skilling.forEach(initSkilling);
other.forEach(initOther);
settings.forEach(initSettings);

function initPvM(script) {
    createCategoryElement(script, pvmContainer);
}

function initSkilling(script) {
    createCategoryElement(script, skillingContainer);
}

function initOther(script) {
    createCategoryElement(script, otherContainer);
}

function initSettings(script) {
    createCategoryElement(script, settingsContainer);
}
