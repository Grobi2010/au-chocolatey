#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1200.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1200.exe'
  checksum               = '8c0b6ab1368b4fca05d1b914d508928046bd9dbc5381a075d1bff64d558e2a0d'
  checksum64             = '8c0b6ab1368b4fca05d1b914d508928046bd9dbc5381a075d1bff64d558e2a0d'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
