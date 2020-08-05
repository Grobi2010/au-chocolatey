#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0700.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0700.exe'
  checksum               = 'e08a43ae90c310428c7b24712a15b1fc0560bd43c1dd19848dfbbc161d9dd590'
  checksum64             = 'e08a43ae90c310428c7b24712a15b1fc0560bd43c1dd19848dfbbc161d9dd590'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
