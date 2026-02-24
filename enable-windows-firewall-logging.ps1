# =============================================
# Enable Windows Firewall Logging for ALL Profiles
# Run as Administrator on your Endpoint VM
# Created for Home SOC Lab - Splunk Project (MSc)
# =============================================

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "   Enabling Windows Firewall Logging (All Profiles)" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Cyan

# Enable logging for Domain, Private & Public profiles
Set-NetFirewallProfile -Profile Domain,Private,Public `
    -LogAllowed True `
    -LogBlocked True `
    -LogFileName "C:\Windows\System32\LogFiles\Firewall\pfirewall.log" `
    -LogMaxSizeKilobytes 32768

Write-Host "`n✅ SUCCESS! Windows Firewall logging is now ENABLED" -ForegroundColor Green
Write-Host "📁 Log file location: C:\Windows\System32\LogFiles\Firewall\pfirewall.log" -ForegroundColor Yellow
Write-Host "   (Both Allowed and Blocked connections will be logged)" -ForegroundColor Yellow
Write-Host "`nYou can now monitor this file in Splunk using sourcetype = pfirewall.log`n" -ForegroundColor Cyan

# Optional: Show current status
Write-Host "Current Firewall Logging Status:" -ForegroundColor White
Get-NetFirewallProfile -Profile Domain,Private,Public | 
    Select-Object Name, LogAllowed, LogBlocked, LogFileName | 
    Format-Table -AutoSize
