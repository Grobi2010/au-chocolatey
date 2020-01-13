#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0000.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.1.0000.exe'
  checksum               = '5527f7e521aca08610df8f478f65fdbbbb11ce553fc3d1a072f92621dc517479'
  checksum64             = '2a017bfb5ce5f8c113a6beac9a2463456f3951b04e7da41e6b16f083b93f6214'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
