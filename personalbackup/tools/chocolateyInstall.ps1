#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0300.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0300.exe'
  checksum               = '915e6721c3b014b246b5bb8d236c6fbeb9259f6bbb409e9341e9baafd62ad316'
  checksum64             = '915e6721c3b014b246b5bb8d236c6fbeb9259f6bbb409e9341e9baafd62ad316'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
