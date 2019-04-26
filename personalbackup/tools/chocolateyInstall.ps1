#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.0.0400.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.0.0400.exe'
  checksum               = '45968c87eb289a7eccb865a02a9f14c96b1aa73bb473b72827dba30f53974999'
  checksum64             = '5597c95d43313a3dcc69f9fda892f0b222b7a99be34fc47c785d3bdaab012cbd'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
