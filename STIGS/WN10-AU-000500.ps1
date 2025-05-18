<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Pamela Burwell
    LinkedIn        : linkedin.com/in/pam-b-b8453188/
    GitHub          : github.com/PDB65/Burwell_P
    Date Created    : 2025-05-18
    Last Modified   : 2024-05-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AU-000500.ps1 
#>


# Define the registry path and value
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$regName = "MaxSize"
$regValue = 32768  # dword:00008000 in decimal is 32768

# Check if the registry key exists
if (-not (Test-Path $regPath)) {
    # If the registry path doesn't exist, create it
    New-Item -Path $regPath -Force
}

# Set the registry value
Set-ItemProperty -Path $regPath -Name $regName -Value $regValue -Type DWord

# Confirm the update
Write-Host "Registry key '$regName' set to '$regValue' at path '$regPath'."
