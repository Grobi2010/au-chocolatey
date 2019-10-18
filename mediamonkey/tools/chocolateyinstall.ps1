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
  checksum      = 'e9a69458b63444b5f11531637927ff098d78a4c6764f20ea69dc33de44c61893'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
