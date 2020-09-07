#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0800.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0800.exe'
  checksum               = 'f7ba65c4f9d7c51aae366261f1426651cbea6e0ae9daef794c63307841a42234'
  checksum64             = 'f7ba65c4f9d7c51aae366261f1426651cbea6e0ae9daef794c63307841a42234'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
