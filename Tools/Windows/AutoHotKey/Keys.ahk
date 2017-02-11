#^Del::
   Run, D:\joe_data\Desktop\Else\sleep.bat
Return

!Space::
   Send {Media_Play_Pause}
Return

#^!NumpadRight::
   Send {Media_Prev}
   Send {Control}
Return

#!Left::
   Send {Media_Prev}
Return

#^!NumpadLeft::
   Send {Media_Next}
   Send {Control}
Return

#!Right::
   Send {Media_Next}
Return
^Capslock::           ; Ctrl+Caps Lock (couldn't make Ctrl+Shift+Caps Lock work for some reason
Sleep 50
SendEvent {LCtrl down}{LAlt down}{Home}{LAlt up}{LCtrl up}
;WinMinimize A    ; need A to specify Active window
return
