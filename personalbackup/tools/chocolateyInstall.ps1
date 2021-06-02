#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0100.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0100.exe'
  checksum               = '7ec123577f999f83c54e76cf4c9038040dc520d0b6bb5e388bd051933b10c225'
  checksum64             = '7ec123577f999f83c54e76cf4c9038040dc520d0b6bb5e388bd051933b10c225'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
