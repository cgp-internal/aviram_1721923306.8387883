$pcList = (Get-Content -Path "./config.json" | ConvertFrom-Json).pcList

foreach ($pc in $pcList) {
    Write-Host "Restarting $pc..."
    Restart-Computer -ComputerName $pc -Force
    Write-Host "Restarted $pc."
}