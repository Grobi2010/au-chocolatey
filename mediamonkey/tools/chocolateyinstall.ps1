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
  checksum      = 'd460bab8dcf549fe3d0df01bdb6b2258da77b4cb6901dbd4fdb8f8961e022698'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
