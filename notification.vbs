Option Explicit
Dim Title,Answer,ws,Site

msgbox"Hi, You are 25 years old"
msgbox"There are 100 days left in this year"

Answer = MsgBox("Do you want to open Leetcode Easy(Time: 30 mins; Type: Easy Programming)?",VbQuestion+VbYesNo,"Open Leetcode")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("iexplore.exe" &" "& "https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1")
    Wscript.Quit()
End If
Answer = MsgBox("Do you want to work on your windows startup app(Time: 30 mins; Type: Easy Programming)",VbQuestion+VbYesNo,"Open VS Code")
If Answer = vbYes Then
    set ws = CreateObject("wscript.shell")
    ws.run("C:\Users\dhann\AppData\Local\Programs\Microsoft VS Code")
    Wscript.Quit()
End If

Wscript.Quit()