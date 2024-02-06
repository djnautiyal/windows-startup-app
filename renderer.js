const { shell } = require('electron');

window.addEventListener("DOMContentLoaded", (event) => {
    const el = document.getElementById('office');
    console.log("office button connected? Let's see.")
    if (el) {
        el.addEventListener('click', () => {
            console.log("Trying to open office related stuff.")
            shell.openExternal("https://myworkspace.jpmchase.com/")
            shell.openPath("C:/Windows/zoom")
        });
    }
    else {
        console.log("Oops, button was not found.");
    }
})

window.addEventListener("DOMContentLoaded", (event) => {
    const el = document.getElementById('dsa-study');
    console.log("dsa-study button connected? Let's see.")
    if (el) {
        el.addEventListener('click', () => {
            console.log("Trying to open DSA related stuff.")
            shell.openExternal("https://takeuforward.org/interviews/strivers-sde-sheet-top-coding-interview-problems/")
            shell.openExternal("https://takeuforward.org/interview-sheets/strivers-79-last-moment-dsa-sheet-ace-interviews/")
            shell.openExternal("https://www.techinterviewhandbook.org/grind75?mode=all&weeks=16&hours=10")
            shell.openPath("C:\\Users\\dhann\\OneDrive\\Documents\\dsa-ledger.xlsx")
        });
    }
    else {
        console.log("Oops, button was not found.");
    }
})

window.addEventListener("DOMContentLoaded", (event) => {
    const el = document.getElementById('windows-startup-app');
    console.log("windows-startup-app button connected? Let's see.")
    if (el) {
        el.addEventListener('click', () => {
            console.log("Trying to open Window startup app related stuff.")
            shell.openExternal("https://www.electronjs.org/docs/latest/README#getting-started")
            shell.openExternal("https://www.electronjs.org/docs/latest/tutorial/process-model")
            shell.openPath("C:\\Windows\\code") //  V:\\windows-startup-app
        });
    }
    else {
        console.log("Oops, button was not found.");
    }
})

window.addEventListener("DOMContentLoaded", (event) => {
    const el = document.getElementById('data-pipeline-app');
    console.log("data-pipeline-app button connected? Let's see.")
    if (el) {
        el.addEventListener('click', () => {
            console.log("Trying to open Data pipeline related stuff.")
            shell.openExternal("https://github.com/djnautiyal/event-transformation-storage-pipeline")
            shell.openExternal("https://developer.spotify.com/documentation/web-api/tutorials/getting-started")
            shell.openPath("C:\\Windows\\intellij") // V:\\Java\\event-transformation-storage-pipeline
        });
    }
    else {
        console.log("Oops, button was not found.");
    }
})