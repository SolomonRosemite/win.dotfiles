Capslock::
Send {LShift}{LCtrl}{F12}
return

^Capslock::
Send ^{ü}
return

<+Capslock::
Send ^{ü}
return

<!Capslock::
Send ^{ü}
return

<!<+Capslock::
Send ^{ü}
return

^<!<+Capslock::
Send ^{ü}
return

^<+Capslock::
Send ^{ü}
return

^<!Capslock::
Send ^{ü}
return

; Notion navigation by mouse buttons
#IfWinActive, ahk_exe notion.exe
XButton1::
Send {CTRLDOWN}{vkDBsc01A}{CTRLUP}
Return

#IfWinActive, ahk_exe notion.exe
XButton2::
Send {CTRLDOWN}{vkDDsc01B}{CTRLUP}
Return

; Overwatch stuff
#IfWinActive, ahk_exe Overwatch.exe
; Disable Alt+Tab
!Tab::Return

#IfWinActive, ahk_exe Overwatch.exe
; Disable Windows Key + Tab
#Tab::Return

; Valorant stuff
#IfWinActive, ahk_exe Valorant.exe
; Disable Alt+Tab
!Tab::Return

#IfWinActive, ahk_exe Valorant.exe
; Disable Windows Key + Tab
#Tab::Return

#IfWinActive, ahk_exe VALORANT-Win64-Shipping.exe
; Disable Alt+Tab
!Tab::Return

#IfWinActive, ahk_exe VALORANT-Win64-Shipping.exe
; Disable Windows Key + Tab
#Tab::Return

; Chrome stuff
#IfWinActive ahk_exe chrome.exe
^h::
    Send, {XButton1} ; Go back
    return

#IfWinActive ahk_exe chrome.exe
^l::
    Send, {XButton2} ; Go forward
    return

#IfWinActive ahk_exe chrome.exe
^+k::
    Send, {WheelUp 7} ; Scroll up
    return

#IfWinActive ahk_exe chrome.exe
^+j::
    Send, {WheelDown 7} ; Scroll down
    return

#IfWinActive ahk_exe chrome.exe
^k::
    Send, {WheelUp 3} ; Scroll up a little
    return

#IfWinActive ahk_exe chrome.exe
^j::
    Send, {WheelDown 3} ; Scroll down a little
    return

#IfWinActive ahk_exe chrome.exe
^p::
    Send, !q ; QuicKey tab switcher
    return

#IfWinActive ahk_exe chrome.exe
^+p::
    Send, ^p ; Open print dialog
    return

	
#IfWinActive ahk_exe chrome.exe
    ^+l::Send, ^{Tab} ; Ctrl+Shift+L to go forward a tab
    ^+h::Send, ^+{Tab} ; Ctrl+Shift+H to go back a tab


#IfWinActive ahk_exe chrome.exe
~g:: ; Go top of page
    Input, key, L1 T0.5 ; Wait for the second "g" within 0.5 seconds
    if (ErrorLevel = "Timeout")
    {
        return
    }
    
    if (key = "g") ; If the second key is also "g"
    {
        Send, {Home} ; Send Home key
    }
    else
    {
        Send, %key% ; Send the second key
    }
    return
