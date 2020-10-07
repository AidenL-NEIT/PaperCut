if (Test-Connection args[0]) {
    $cache = args[1];
    $path = $env:LOCALAPPDATA + "\temp";

    $papercut = Get-Process pc-client -ErrorAction SilentlyContinue;
    if (!$papercut) {
        Start-Process -FilePath $cache -ArgumentList "--silent", "--noquit", "--cache $path";
    }

    Remove-Variable papercut;
}
