Option Explicit
Dim Title,Answer,ws,lcEasyCodeURL,dt,age,birthYear,etspURL,workspaceURL,ckadURL,spotifyAPIURL

dt = now
birthYear=1998
age=Year(dt)-birthYear
MsgBox "Hi, You are " & age &" years old. Still, there are " & DateDiff("d",dt,"01-01-24") & " days left in this year Let's do Something!", vbSystemModal+vbExclamation

lcEasyCodeURL="https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1"
etspURL="https://github.com/djnautiyal/event-transformation-storage-pipeline"
ckadURL="https://cloudacademy.com/dashboard/"
workspaceURL="https://myworkspace.jpmchase.com/"
spotifyAPIURL="https://developer.spotify.com/documentation/web-api/tutorials/getting-started"

Answer = MsgBox("Office?", vbSystemModal+VbQuestion+VbYesNo,"Open Intellij")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("zoom")
    ws.run("firefox " & workspaceURL)
    Wscript.Quit()
End If

Answer = MsgBox("CKAD study? CKAD due date is Dec 17th and You're 80% done already. LET'S DO IT!", vbSystemModal+VbQuestion+VbYesNo,"Open Cloud Academy")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("intellij V:\Java\ckad-notes")
    ws.run("firefox https://github.com/dgkanatsios/CKAD-exercises")
    ws.run("firefox " & ckadURL)
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
Answer = MsgBox("Do you want to open Leetcode Easy(Time: 30 mins; Type: Easy Programming)?",vbSystemModal+VbQuestion+VbYesNo,"Open Leetcode")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& lcEasyCodeURL)
    Wscript.Quit()
End If
Answer = MsgBox("Do you want to work on your windows startup app(Time: 30 mins; Type: Easy Programming)?", vbSystemModal+VbQuestion+VbYesNo,"Open VS Code")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox " & "https://www.electronjs.org/docs/latest/tutorial/tutorial-prerequisites")
    ws.run("code V:\windows-startup-app" )
    Wscript.Quit()
End If

Wscript.Quit()