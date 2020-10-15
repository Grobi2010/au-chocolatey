#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0903.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0903.exe'
  checksum               = 'de6374b7ec78eacf1bc0b5cdfa168b4f7cda33422e330b28aa151e72d95ef329'
  checksum64             = 'de6374b7ec78eacf1bc0b5cdfa168b4f7cda33422e330b28aa151e72d95ef329'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
