; AutoHotkey Version: 1.0.39+ 
; Language:  English 
; Platform:  Windows 10 
; Author:    PsychoX420 
; Function:  
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn All, Off 
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; Necessary to match on the name of the window instead of window class in IfWinActive.
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1

; /////////Set Delay////////////
Keywaittime := 41

EWO1:
Gui, Submit, NoHide
firstpsn:
    Send {V down}
	Sleep, 50
	Send {V up}
	Sleep, 50
Return

Down:
    Send {Down down}
    Sleep, %Keywaittime%
    Send {Down up}
    Sleep, %Keywaittime%
Return

Right:
    Send {Right down}
    Sleep, %Keywaittime%
    Send {Right up}
    Sleep, %Keywaittime%
Return
 
Up:
    Send {up down}
    Sleep, %Keywaittime%
    Send {up up}
    Sleep, %Keywaittime%
Return

Left:
    Send {Left down}
    Sleep, %Keywaittime%
    Send {Left up}
    Sleep, %Keywaittime%
Return
 
Enter:
    Send {Enter down}
    Sleep, %Keywaittime%
    Send {Enter up}
    Sleep, %Keywaittime%
Return
 
Menu:
    Send {M down}
    Sleep, %Keywaittime%
    Send {M up}
Return

LookBackD:
    Send {C down}
	Sleep, %Keywaittime%
Return
	
LookBackU:
    Send {C up}
	Sleep, %Keywaittime%
Return

Shoot:
    Send {LButton down}
    Sleep, %Keywaittime%
    Send {LButton up}
Return

`::
        Gosub, Shoot
        Gosub, Menu
        Sleep, 100      ; Extra long sleep just to make sure the menu has time to appear properly.
	    Gosub, Up
        Gosub, Up
	    Gosub, LookBackD
        Gosub, Enter
	    Gosub, LookBackU
	    Gosub, Menu	
Return

1::
        Gosub, Menu
        Gosub, Enter
        Gosub, Enter
Return

2::		
		Gosub, Menu
		Gosub, Enter
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Enter
		Gosub, Down
		Gosub, Enter
Return

3::
		Gosub, Menu
		Gosub, Enter
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Enter
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Enter
Return

4::
		Gosub, Menu
		Gosub, Enter
		Gosub, Enter
		Gosub, Right
		Gosub, Right
		Gosub, Enter
Return

F1::

		Gosub, Menu
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Enter
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Left
		Gosub, Enter
		Gosub, Menu
Return

F2::
		Gosub, Menu
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Enter
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Right
		Gosub, Enter
		Gosub, Menu
Return

5::
		Gosub, Menu
		Gosub, Down
		Gosub, Down
		Gosub, Enter
		Gosub, Down
		Gosub, Down
		Gosub, Down
		Gosub, Enter
		Gosub, Up
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Enter
		Gosub, Up
		Gosub, Up
		Gosub, Enter
		Gosub, Menu
Return

F3::
if(toggle) {
            toggle := false


            Gui, 2:Destroy
            IfWinExist, Grand Theft Auto V
            WinActivate
            Return
        } else {
            toggle := true
            Gui 2:+AlwaysOnTop -Caption +ToolWindow
            Gui, 2:Color, white
            Gui, 2:Show, x1279 y719 w2 h2, Gui 2
            Return
        }