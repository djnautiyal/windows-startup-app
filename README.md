# windows-startup-app
Starting up a menu-like startup task as soon as my computer starts.

# Desktop App Version
## Current State
It can open links for now. Need to be packaged as desktop app to start use. Not the preferred version.

## Target State:
- Goes to System tray upon closure or is accessible via cmd line
- able to fetch excel sheet and create questionnaire from it.
- able to run leetcode or GFG automatically in a new application window.

## How to run:
Currently only from VS Code. Inside its terminal, run 'npm start'

# Primitive Version(Being Used Currently)
## Current State:
Able to create a windows popup at the foreground and run your apps/browser from there.

## Target State:
See Desktop App Verison

## How to run:
Please make sure that you are using correct file-locations/urls. Mentioned here:
- Urls can be found using searching "http".
- File location can be found in ":\\" and is only in vbs/bat file.
- Make sure to change birthYear var.
- Make sure to put the startupfile shortcut into start-up folder(Win+R > "shell:startup" > A folder will open).

# Win+R Shortcuts
- 'intellij'
- 'docker-desktop'
- 'do'(for vbs script, when I want to switch to something else.)
- 'zoom'

# How to create Win+R shortcuts
[https://www.easytutorial.com/custom-run-commands-windows.html](custom run commands)
