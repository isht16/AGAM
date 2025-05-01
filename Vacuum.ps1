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
