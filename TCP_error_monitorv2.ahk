#Persistent
SetTimer, CloseErrorDialogs, 1000  ; Check every second

CloseErrorDialogs:
; Handle the "TCP/IP Services Application Error" dialog
IfWinExist, TCPSVCS.EXE - Application Error
{
    WinActivate  ; Bring the dialog to the foreground
    Send, {Enter}  ; Simulate pressing Enter to close
    FileAppend, %A_Now% - Closed TCPSVCS.EXE dialog`n, %A_MyDocuments%\ErrorDialogLog.txt
}

; Handle the "JUCEWindow: TCPSVCS.EXE - Application Error" dialog
IfWinExist, JUCEWindow: TCPSVCS.EXE - Application Error
{
    WinActivate  ; Bring the dialog to the foreground
    Send, {Enter}  ; Simulate pressing Enter to close
    FileAppend, %A_Now% - Closed JUCEWindow dialog`n, %A_MyDocuments%\ErrorDialogLog.txt
}
Return
