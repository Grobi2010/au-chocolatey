#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1100.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.1100.exe'
  checksum               = 'be4c3f57370c684dc68603a36ba1fb84b5595f1d3a40d61758d74584199ec5d5'
  checksum64             = 'be4c3f57370c684dc68603a36ba1fb84b5595f1d3a40d61758d74584199ec5d5'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
