$ErrorActionPreference = 'Stop';
$packageName= 'mediamonkey'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.mediamonkey.com/MediaMonkey_Setup.exe'
$url64      = ''
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'mediamonkey*'
  checksum      = '628bd052f5b364f226402eca0364418946da1c307f1dfce73ea8a178e0709dd3'
  checksumType  = 'sha512'
  checksum64    = ''
  checksumType64= 'sha512'
}

Install-ChocolateyPackage @packageArgs
