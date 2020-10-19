#$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
#$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.mediamonkey.com/MediaMonkey_Setup.exe'
$packageArgs = @{
  packageName   = $packageName
  # unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  # validExitCodes= @(0)
  softwareName  = 'mediamonkey*'
  checksum      = '26b043926b09cd85495caa87df33e35bc79cfb3e3973095998e7abd9f1e23076'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
