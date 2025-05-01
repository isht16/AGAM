#
# Application Management Instructions (AMI)
#
# <INSTRUCTION> <VALUE> <PARAMETER> <PARAMETER> <PARAMETER>...
#
# COM <VALUE>.
#
# SEC <VALUE>.
#
# ADD <VALUE>.
# REM <VALUE>.
#
# ENA <VALUE> <KEEP CACHE DATA>.
# DIS <VALUE> <KEEP CACHE DATA>.
#

param (

    [string] $filePath
)

$fileContent = Get-Content -Path $filePath -Raw

foreach ($line in $fileContent -Split "`n") {

    $prompt = $line -Split ";"

    switch ($prompt[0]) {

        "SEC" {

            Write-Output "--- $($prompt[1]) ---"
        }

        "ENA" {

        }

        "DIS" {

        }

        "ADD" {

        }

        "REM" {

            Write-Output "pm uninstall --user 0 $($prompt[1])"

            # .\adb.exe shell "pm uninstall --user 0 $($prompt[1])"
        }
    }
}
