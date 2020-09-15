#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0801.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0801.exe'
  checksum               = 'cfeb1c4256d5ab5ac2e8e38c0d0ea5f440b11f902265e24d288f3ab7f4c2febb'
  checksum64             = 'cfeb1c4256d5ab5ac2e8e38c0d0ea5f440b11f902265e24d288f3ab7f4c2febb'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
