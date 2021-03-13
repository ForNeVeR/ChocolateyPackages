param (
    $PackagesBase = "$PSScriptRoot/.."
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$packages = @(
    'cask'
)

foreach ($package in $packages) {
    Write-Output "Packaging $package…"
    choco pack $PackagesBase/$package/$package.nuspec
    if (!$?) {
        throw "Choco pack for $package returned $LASTEXITCODE"
    }
}
