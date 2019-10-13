#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.0.1000.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.0.1000.exe'
  checksum               = '83f0e75b8aed9d6e1d429988917220c4faff8e0c41c1ac2099903aa85d297aa2'
  checksum64             = '9775ac139eff99219f00cfccdfab8f2ed9b6ec0b3c17916e98cb9d062b2c95b4'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
