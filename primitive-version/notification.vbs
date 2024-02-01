Option Explicit
Dim Title,Answer,ws,lcEasyCodeURL,dt,age,birthYear,etspURL,workspaceURL,spotifyAPIURL

dt = now
birthYear=1998
age=Year(dt)-birthYear
MsgBox "Hi, You are " & age &" years old. Still, there are " & DateDiff("d",dt,"01-01-25") & " days left in this year Let's do Something!", vbSystemModal+vbExclamation

lcEasyCodeURL="https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1"
etspURL="https://github.com/djnautiyal/event-transformation-storage-pipeline"
workspaceURL="https://myworkspace.jpmchase.com/"
spotifyAPIURL="https://developer.spotify.com/documentation/web-api/tutorials/getting-started"

Answer = MsgBox("Office?", vbSystemModal+VbQuestion+VbYesNo,"Open Intellij")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("zoom")
    ws.run("firefox " & workspaceURL)
    Wscript.Quit()
End If

Answer = MsgBox("Do you want to do some leetcode(Time: 30 mins; Type: Easy Programming)?",vbSystemModal+VbQuestion+VbYesNo,"Open Leetcode")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://takeuforward.org/interviews/strivers-sde-sheet-top-coding-interview-problems/")
    ws.run("firefox "& "https://takeuforward.org/interview-sheets/strivers-79-last-moment-dsa-sheet-ace-interviews/")
    ws.run("firefox "& "https://www.techinterviewhandbook.org/grind75?mode=all&weeks=16&hours=10")
    ws.run("excel " & "C:\Users\dhann\OneDrive\Documents\DSA-Jan-2024.xlsx")
    
    Wscript.Quit()
End If

Answer = MsgBox("Do you want to work on your windows startup app(Time: 30 mins; Type: Easy Programming)?", vbSystemModal+VbQuestion+VbYesNo,"Open VS Code")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox " & "https://www.electronjs.org/docs/latest/tutorial/tutorial-prerequisites")
    ws.run("firefox " & "https://www.electronjs.org/docs/latest/README#getting-started")
    ws.run("firefox " & "https://www.electronjs.org/docs/latest/tutorial/process-model")
    ws.run("code V:\windows-startup-app" )
    Wscript.Quit()
End If

Answer = MsgBox("Want to create a Data pipeline(Time: 30 mins; Type: Easy Programming)? You promised to display your Spotify profile data in a web app.", vbSystemModal+VbQuestion+VbYesNo,"Open Intellij")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("intellij V:\Java\event-transformation-storage-pipeline")
    ws.run("firefox " & etspURL)
    ws.run("firefox " & spotifyAPIURL)
    ws.run("docker-desktop")
    Wscript.Quit()
End If

Wscript.Quit()