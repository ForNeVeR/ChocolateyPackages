$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$url = 'https://github.com/cask/cask/archive/v0.8.5.zip'
$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url = $url
  checksum = 'B925C02496B25F78FCF640D6B3A6CFA87554E4FC83DB730745678FF6A94E5A84'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-BinFile -Name cask -Path (Join-Path $toolsDir 'cask-0.8.5\bin\cask.bat')
