#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.0.0104.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.0.0104.exe'
  checksum               = '8ead0aad9daa41d68edb906fcdadf64f5bc100edb1ae01ba979b8237dc89d4a8'
  checksum64             = '9413bcd2e6f4290eae2985836051e456f7ac61f49e303430c1db3e9963705846'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}
Install-ChocolateyPackage @packageArgs
