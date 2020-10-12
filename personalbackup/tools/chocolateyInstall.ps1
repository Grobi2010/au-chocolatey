#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0902.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0902.exe'
  checksum               = '71644316ce97e1ddd390985fc43821d5c32b6f341bb5b6b443880b477cf46d03'
  checksum64             = '71644316ce97e1ddd390985fc43821d5c32b6f341bb5b6b443880b477cf46d03'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
