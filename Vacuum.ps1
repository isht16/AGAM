function Remove-Bloat {

    param (

        [string] $Path
    )

    $elements = @(Get-Content $path)

    for (

        $i = 1;
        $i -le $($elements.Count);
        $i++
    ) {

        $prompt = "pm uninstall --user 0 $($elements[$i - 1])"

        Write-Progress -Activity 'Running ADB scripts' -Status "Step $($i) of $($elements.Count)" -CurrentOperation $prompt

        .\adb.exe shell $prompt
    }
}

Remove-Bloat '.\Essential'

# https://www.reddit.com/r/Realme/comments/13i56um/comment/kj0dmr7/?translated=1&pretranslation_language=es-es
Remove-Bloat '.\Realme\RMX3710'
