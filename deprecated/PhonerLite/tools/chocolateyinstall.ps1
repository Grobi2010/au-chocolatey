
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.phoner.de/PhonerLiteSetup.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'PhonerLite*'

  checksum      = '2e58a59edf817b3f54d0444b649ade866abb51dba9ad1b13a1f143a8cb37cbb1'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs










    








