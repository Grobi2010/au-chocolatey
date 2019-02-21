
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

  checksum      = '7561002D81A52D82D979C435D78891A7902C1C33988ABF0CC07531E4E21610AC'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs










    








