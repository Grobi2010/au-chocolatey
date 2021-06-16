#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0200.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0200.exe'
  checksum               = 'b53a9c7ca47c69de1bcce793b08bc0d3a52ce0a51c58e84120a4a6ded5a8d4a4'
  checksum64             = 'b53a9c7ca47c69de1bcce793b08bc0d3a52ce0a51c58e84120a4a6ded5a8d4a4'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
