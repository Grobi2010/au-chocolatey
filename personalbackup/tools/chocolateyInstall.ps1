#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0400.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0400.exe'
  checksum               = '8e0b0f89c0158d2559f2b75cae384cb151033088639e166a02fa3eb197679883'
  checksum64             = '8e0b0f89c0158d2559f2b75cae384cb151033088639e166a02fa3eb197679883'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
