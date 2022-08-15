; Restart Spotify to skip ads.
^!s::
Process, Close, spotify.exe
Run, "C:\Users\yukani\AppData\Roaming\Spotify\Spotify.exe"
; This doesn't work always, unfortunately.
; WinWait, Spotify Free,, 10
; if ErrorLevel
; {
; 	MsgBox, Spotify WinWait timed out.
; 	return
; } else {
; 	Send, {Media_Play_Pause}
; }
Sleep, 2250
Send, {Media_Play_Pause}
WinMinimize, Spotify Free
return
