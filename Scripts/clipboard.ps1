Get-Clipboard
Try{
    Set-Clipboard -Value "hey there, world from PowerShell!"
    }
Catch{
    Start-Sleep -s 1
    Set-Clipboard -Value "hey there, world from PowerShell!"
}
Try{
    Get-Clipboard
    }
Catch{
    Start-Sleep -s 1
    Get-Clipboard
}