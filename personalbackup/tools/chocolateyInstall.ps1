#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.0.0900.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.0.0900.exe'
  checksum               = '8b5a895debec1bca6873788fa112905c2084d1f88057dc4489a13fcb3d7f6f2e'
  checksum64             = 'ebbfc6500e8f6819b6ed7a9fae00ea0657c7fbbe1bcebbce14f1e77cf7b21dab'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
