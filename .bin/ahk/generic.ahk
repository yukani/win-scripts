; Disable retarded Windows 10/11 Bing Help
$F1::
if Not WinActive("ahk_exe explorer.exe") {
	Send, {F1}
}
return

; $F9::
; if WinExist("ahk_exe obs64.exe") {
;	Send, {F9}
; } else {
;	; do stuff
; }

; Test
; ^!y::
; ControlSend, Edit1, {A}{B}, Untitled - Notepad

; F Key real-estate
; F1 through F6: used*
; F7, F8: unused
; F9: customly used (OBS)
; F10 through F12: used
;
; *: F1 is mostly used for help stuff. can it be considered unused?