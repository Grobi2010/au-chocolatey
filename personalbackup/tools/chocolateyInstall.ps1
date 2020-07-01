#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0600.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0600.exe'
  checksum               = '27ee29e854698d143e1c28e2c8272521c987ac78f649e293aa45c2b789e2ad17'
  checksum64             = '27ee29e854698d143e1c28e2c8272521c987ac78f649e293aa45c2b789e2ad17'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
