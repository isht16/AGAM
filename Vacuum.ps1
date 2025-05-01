param (

    $filePath
)

$fileContent = Get-Content -Path $filePath -Raw

foreach ($line in $fileContent -Split "`n") {

    $prompt = $line -split ";" | ForEach-Object { $_.Trim() }

    switch ($prompt[0]) {

        "SEC" {

            Write-Output "$($prompt[1])"
        }

        "ENA" {

            .\adb.exe shell "pm default-state --user 0 $($prompt[1])"
        }

        "DIS" {

            .\adb.exe shell "pm disable-user --user 0 $($prompt[1])"
        }

        # "ADD" {
        #
        # }

        "REM" {

            .\adb.exe shell "pm uninstall --user 0 $($prompt[1])"
        }
    }
}
