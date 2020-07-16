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
  checksum      = '74533a8d43e8c7daca3b45730cf42c83bb2384a4dc26bd710fd5a7570baeb62f'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
