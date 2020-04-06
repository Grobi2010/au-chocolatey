#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0300.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0300.exe'
  checksum               = 'd9f75c33f34ef90c76745087b289b6979104eb2658a93ade4a4b69516bf7dcbc'
  checksum64             = 'd9f75c33f34ef90c76745087b289b6979104eb2658a93ade4a4b69516bf7dcbc'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
