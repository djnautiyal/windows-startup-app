// const { shell } = require('electron');

window.addEventListener("DOMContentLoaded", (event) => {
    const el = document.getElementById('game');
    console.log("game button connected? Let's see.")
    if (el) {
        el.addEventListener('click', () => {
            console.log("Trying to open game related stuff.")
            readFile()
            
        });
    }
    else {
        console.log("Oops, button was not found.");
    }
})