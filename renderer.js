const { shell } = require('electron');

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
            // openPath
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
            shell.openExternal("code V:\windows-startup-app")
            // window.open("https://www.geeksforgeeks.org/problems/job-sequencing-problem-1587115620/1") to work on this, and make it better
        });
    }
    else {
        console.log("Oops, button was not found.");
    }
})

// add leetcode and geekforgeeks on the window itself.