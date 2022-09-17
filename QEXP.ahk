#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
xkaydet(){
    IniWrite, %x%, mem, 1, x
}
xcek(){
    IniRead, x, mem, 1, x
}
if Not FileExist("mem"){
    x=1
    xkaydet()
}
xcek()
F4::
MsgBox, %x%
return
F1::
Send,!fe{Enter}, 
WinWait, Save As
Send, %x%.png
x++
xkaydet()
return
F2::
x++
xkaydet()
return
F3::
x--
xkaydet()
return