#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0400.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0400.exe'
  checksum               = '616446221d0d59b760171ec0be05330b988840fbbde70e0b7adf1e716ed33401'
  checksum64             = '616446221d0d59b760171ec0be05330b988840fbbde70e0b7adf1e716ed33401'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
