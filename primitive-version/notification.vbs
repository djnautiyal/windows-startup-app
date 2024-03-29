Option Explicit
Dim Title,Answer,ws,lcEasyCodeURL,dt,age,birthYear,etspURL,workspaceURL,spotifyAPIURL

dt = now
birthYear=1998
age=Year(dt)-birthYear
MsgBox "Your current age:" & age & vbNewLine & "Days left in this year: " & DateDiff("d",dt,"01-01-25"), vbSystemModal+vbExclamation
MsgBox "Days till D-day: " & DateDiff("d",dt,"18-04-24"), vbSystemModal+vbExclamation

lcEasyCodeURL="https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1"
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

Answer = MsgBox("Udemy??",vbSystemModal+VbQuestion+VbYesNo,"JPMC Udemy")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://jpmc.udemy.com/")
    Wscript.Quit()
End If

Answer = MsgBox("Last minute interview preparation?",vbSystemModal+VbQuestion+VbYesNo,"Open Leetcode")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://leetcode.com/studyplan/top-interview-150/")
    ws.run("firefox "& "https://takeuforward.org/interview-sheets/strivers-79-last-moment-dsa-sheet-ace-interviews/")
    ws.run("excel " & "C:\Users\dhann\OneDrive\Documents\dsa-ledger.xlsx")
    
    Wscript.Quit()
End If

Answer = MsgBox("Striver's playlist??",vbSystemModal+VbQuestion+VbYesNo,"Open SDE sheet")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://takeuforward.org/interviews/strivers-sde-sheet-top-coding-interview-problems/")
    ws.run("excel " & "C:\Users\dhann\OneDrive\Documents\dsa-ledger.xlsx")
    
    Wscript.Quit()
End If

Answer = MsgBox("Grind 169??",vbSystemModal+VbQuestion+VbYesNo,"Open Grind 169")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://www.techinterviewhandbook.org/grind75?mode=all&weeks=16&hours=10")
    ws.run("excel " & "C:\Users\dhann\OneDrive\Documents\dsa-ledger.xlsx")
    
    Wscript.Quit()
End If

Answer = MsgBox("Leetcode SQL?",vbSystemModal+VbQuestion+VbYesNo,"SQL")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("firefox "& "https://leetcode.com/studyplan/top-sql-50/")
    ws.run("firefox "& "https://www.sql-practice.com/")
    
    Wscript.Quit()
End If

Answer = MsgBox("Windows Startup App?", vbSystemModal+VbQuestion+VbYesNo,"Scripting")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("code "&"V:\study\repositories\windows-startup-app")
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