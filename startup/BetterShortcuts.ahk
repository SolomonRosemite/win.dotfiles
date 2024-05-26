^+M::
Send, solomonezenwa.kanu-agha@marieeins.de
return

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


; spotify stuff ----------------------------------------------------------
#IfWinActive ahk_exe Spotify.exe
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

; ow & valorant ---------------------------------------------------------

; overwatch stuff
#IfWinActive, ahk_exe Overwatch.exe
; Disable Alt+Tab
!Tab::Return

; Disable Windows Key + Tab
#Tab::Return

; Disable Shift+Alt+Tab
+!Tab::Return

; valorant stuff
#IfWinActive, ahk_exe Valorant.exe
; Disable Alt+Tab
!Tab::Return

; Disable Windows Key + Tab
#Tab::Return

; Disable Shift+Alt+Tab
+!Tab::Return

