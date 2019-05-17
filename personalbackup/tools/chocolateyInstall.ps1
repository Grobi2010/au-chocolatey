#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.0.0500.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.0.0500.exe'
  checksum               = 'd598526899b47b962a26f58b4c393ff9bedd5a61df7b711dcbdf8cf480721d68'
  checksum64             = '9faa56142b88014e39758257ba41de37122c2108e0dd4fc68aad8387f17a2d6d'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
