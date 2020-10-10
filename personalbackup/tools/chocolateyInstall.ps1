#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0901.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0901.exe'
  checksum               = 'acc379d483d09d1859dc4ed4ceab457acd0dfe08c794515b51481927f96b3064'
  checksum64             = 'acc379d483d09d1859dc4ed4ceab457acd0dfe08c794515b51481927f96b3064'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
