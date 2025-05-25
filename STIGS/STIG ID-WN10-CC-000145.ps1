<#
.SYNOPSIS
    Data Execution Prevention (DEP) prevents harmful code from running in protected memory locations reserved for Windows and other programs.

.NOTES
    Author          : Pamela Burwell
    LinkedIn        : linkedin.com/in/pam-b-b8453188/
    GitHub          : github.com/PDB65/Burwell_P
    Date Created    : 2025-05-25
    Last Modified   : 2024-05-25
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000145 

 
#>


# Launch PowerShell with elevated privileges (Run as administrator), run script, and reboot the device.
# Note: Include the quotes around “{current}”

# PowerShell Script:

BCDEDIT /set “{current}” nx OptOut
