#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0200.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0200.exe'
  checksum               = 'e91f887f72136981aebb9e66bb85024d6ad5a57c4eac69838706ddb2d0a88485'
  checksum64             = 'e91f887f72136981aebb9e66bb85024d6ad5a57c4eac69838706ddb2d0a88485'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
