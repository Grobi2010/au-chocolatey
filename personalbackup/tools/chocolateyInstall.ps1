#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1201.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1201.exe'
  checksum               = '81687731a27b3bd0f947a85d14f0421a4436ca155d89e068ea95ea88e1dd43d7'
  checksum64             = '81687731a27b3bd0f947a85d14f0421a4436ca155d89e068ea95ea88e1dd43d7'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
