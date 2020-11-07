#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1000.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1000.exe'
  checksum               = '9ec8ebe6c0fe303ed23d43a7f2d75b44bd1978d7b3f477399cef6da469b39cd1'
  checksum64             = '9ec8ebe6c0fe303ed23d43a7f2d75b44bd1978d7b3f477399cef6da469b39cd1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
