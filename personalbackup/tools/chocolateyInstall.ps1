#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0500.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.2.0500.exe'
  checksum               = '5dac2b93896c0e1002b1f5e160f65efc8f32b8cbbdbe033c54694931cb9b394f'
  checksum64             = '5dac2b93896c0e1002b1f5e160f65efc8f32b8cbbdbe033c54694931cb9b394f'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
