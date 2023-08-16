Option Explicit
Dim Title,Answer,ws,lcEasyCodeURL,dt,age,ideaLocation,birthYear

dt = now
birthYear=1998
age=Year(dt)-birthYear
MsgBox "Hi, You are " & age &" years old. Still, there are " & DateDiff("d",dt,"01-01-24") & " days left in this year Let's do Something!", vbSystemModal+vbExclamation

lcEasyCodeURL="https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1"
ideaLocation="C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2023.1.4\bin"

Answer = MsgBox("Do you want to open Leetcode Easy(Time: 30 mins; Type: Easy Programming)?",vbSystemModal+VbQuestion+VbYesNo,"Open Leetcode")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("iexplore.exe "& lcEasyCodeURL)
    Wscript.Quit()
End If
Answer = MsgBox("Do you want to work on your windows startup app(Time: 30 mins; Type: Easy Programming)", vbSystemModal+VbQuestion+VbYesNo,"Open VS Code")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("code")
    Wscript.Quit()
End If
Answer = MsgBox("Maybe a little Chunking up(Time: 30 mins; Type: Easy Programming)?", vbSystemModal+VbQuestion+VbYesNo,"Open Intellij")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.currentDirectory = ideaLocation
    ws.run("idea64.exe")
End If

Wscript.Quit()