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

; Terminal stuff ----------------------------------------------------------
#IfWinActive ahk_exe WindowsTerminal.exe
; nvim
< & j::
Send ^d
return

< & k::
Send ^u
return

; zellij does not support multiple modifier keys - see issue and workaround: https://github.com/zellij-org/zellij/issues/735#issuecomment-1973177193
; https://r12a.github.io/app-conversion/
RAlt & q::Send, {U+E107}     ; ()
RAlt & w::Send, {U+E108}     ; ()
RAlt & e::Send, {U+E109}     ; ()
RAlt & r::Send, {U+E10A}     ; ()

RAlt & a::Send, {U+E10B}     ; ()
RAlt & s::Send, {U+E10C}     ; ()
RAlt & d::Send, {U+E10D}     ; ()
RAlt & f::Send, {U+E10E}     ; ()

RAlt & y::Send, {U+E10F}     ; ()
RAlt & x::Send, {U+E110}     ; ()
RAlt & c::Send, {U+E111}     ; ()
RAlt & v::Send, {U+E112}     ; ()

RAlt & n::Send, {U+E114}     ; ()
RAlt & o::Send, {U+E115}     ; ()
RAlt & p::Send, {U+E116}     ; ()
RAlt & SC027::Send, {U+E100} ; ()

RAlt & h::
GetKeyState,isShiftDown,Shift,P
IfEqual,isShiftDown,D
    Send {U+E122} ; ()
else
    Send {U+E120} ; ()
return

RAlt & l::
GetKeyState,isShiftDown,Shift,P
IfEqual,isShiftDown,D
    Send {U+E123} ; ()
else
    Send {U+E121} ; ()
return

; this is insane

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
alt::
    return ; disable alt

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

