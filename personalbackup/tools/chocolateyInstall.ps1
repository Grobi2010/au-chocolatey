#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1001.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1001.exe'
  checksum               = 'c890dfe3d9b8531a2f0550d0401f69cc4f47bf318b970732803684911db7a4be'
  checksum64             = 'c890dfe3d9b8531a2f0550d0401f69cc4f47bf318b970732803684911db7a4be'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
