Option Explicit
Dim Title,Answer,ws,dt,age,birthYear,etspURL,workspaceURL,spotifyAPIURL

dt = now
birthYear=1998
age=Year(dt)-birthYear
MsgBox "Your current age:" & age & vbNewLine & "Days left in this year: " & DateDiff("d",dt,"01-01-25"), vbSystemModal+vbExclamation

MsgBox "LeetCode Preparation days: " & DateDiff("d", dt, "20-06-24"), vbSystemModal+vbExclamation

etspURL="https://github.com/djnautiyal/event-transformation-storage-pipeline"
workspaceURL="https://myworkspace.jpmchase.com/"
spotifyAPIURL="https://developer.spotify.com/documentation/web-api/tutorials/getting-started"

Answer = MsgBox("Office?", vbSystemModal+VbQuestion+VbYesNo,"Visit Office")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("zoom")
    ws.run("firefox " & workspaceURL)
    Wscript.Quit()
End If

Answer = MsgBox("Windows Startup App?", vbSystemModal+VbQuestion+VbYesNo,"Scripting")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("code "&"V:\study\repositories\windows-startup-app")
    Wscript.Quit()
End If

Answer = MsgBox("Leetcode SQL?",vbSystemModal+VbQuestion+VbYesNo,"SQL")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://leetcode.com/studyplan/top-sql-50/")
    ws.run("firefox "& "https://www.sql-practice.com/")
    
    Wscript.Quit()
End If


Answer = MsgBox("Want to create a spotify data pipeline?", vbSystemModal+VbQuestion+VbYesNo,"Open Intellij")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("intellij V:\study\repositories\event-transformation-storage-pipeline")
    ws.run("firefox " & etspURL)
    ws.run("firefox " & spotifyAPIURL)
    ws.run("docker-desktop")
    Wscript.Quit()
End If

Wscript.Quit()