#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0900.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0900.exe'
  checksum               = '29a6513cf5a4965d109e66987dda651051f75ea5bf4623c0c91729dbf31fd303'
  checksum64             = '29a6513cf5a4965d109e66987dda651051f75ea5bf4623c0c91729dbf31fd303'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
