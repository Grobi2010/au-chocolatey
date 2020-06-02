#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0500.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0500.exe'
  checksum               = '5516145d46ee5893eb7c728f058baaec62e0078131a5eb3a98f445093a944391'
  checksum64             = '5516145d46ee5893eb7c728f058baaec62e0078131a5eb3a98f445093a944391'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
