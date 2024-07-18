*Capslock:: Escape

RAlt & q::Send, ^!+q
RAlt & w::Send, ^!+w
RAlt & e::Send, ^!+e
RAlt & r::Send, ^!+r

RAlt & a::Send, ^!+a
RAlt & s::Send, ^!+s
RAlt & d::Send, ^!+d
RAlt & f::Send, ^!+f

RAlt & y::Send, ^!+y
RAlt & x::Send, ^!+x
RAlt & c::Send, ^!+c
RAlt & v::Send, ^!+v

; Spotify stuff ----------------------------------------------------------
#IfWinActive ahk_exe Spotify.exe
alt::
    return ; disable alt

^h::
    Send, {XButton1} ; Go back
    return

^l::
    Send, {XButton2} ; Go forward
    return

; chrome stuff -----------------------------------------------------------

#IfWinActive ahk_exe chrome.exe
^h::
    Send, {XButton1} ; Go back
    return

^l::
    Send, {XButton2} ; Go forward
    return

^p::
    Send, ^y ; QuicKey tab switcher
    return

^+p::
    Send, ^p ; Open print dialog
    return

; obsidian stuff -----------------------------------------------------------

#IfWinActive ahk_exe Obsidian.exe
^+l::
    SendInput {WheelRight 10}
    return

^+h::
    SendInput {WheelLeft 10}
    return

; ow & valorant ---------------------------------------------------------

; Overwatch stuff
#IfWinActive, ahk_exe Overwatch.exe
; Disable Alt+Tab
!Tab::Return

; Disable Windows Key + Tab
#Tab::Return

; Disable Shift+Alt+Tab
+!Tab::Return

; Valorant stuff
#IfWinActive, ahk_exe Valorant.exe
; Disable Alt+Tab
!Tab::Return

; Disable Windows Key + Tab
#Tab::Return

; Disable Shift+Alt+Tab
+!Tab::Return

