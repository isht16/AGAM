param (

    $filePath
)

$fileContent = Get-Content -Path $filePath -Raw

foreach ($line in $fileContent -Split "`n") {

    $prompt = $line -split ";" | ForEach-Object { $_.Trim() }

    switch ($prompt[0]) {

        "DEVELOPER" {

            Write-Output $prompt[1]
        }

        "DISABLE" {

            Write-Output $prompt[1]

            adb.exe shell "pm disable --user 0 $($prompt[2])"
        }

        "UNINSTALL" {

            Write-Output $prompt[1]

            adb.exe shell "pm uninstall --user 0 $($prompt[2])"
        }
    }
}
