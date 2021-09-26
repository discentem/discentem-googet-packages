$fullName = (Get-AppxPackage -Name "*windowsterminal*").PackageFullName

if ($fullName -eq "") {
    Write-Host "WindowsTerminal is not installed, can't remove"
    exit(1)
}

Remove-AppxPackage -Package "$fullName"
exit($LASTEXITCODE)