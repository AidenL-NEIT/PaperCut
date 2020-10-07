param ($ConnectTo, $Cache)
if (Test-Connection $ConnectTo) {
    $path = $env:LOCALAPPDATA + "\temp";
    $papercut = Get-Process pc-client -ErrorAction SilentlyContinue;
    if (!$papercut) {
        Start-Process -FilePath $Cache -ArgumentList "--silent", "--noquit", "--cache $path";
    }
    Remove-Variable papercut;
}
