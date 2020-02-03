#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.1.0001.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.1.0001.exe'
  checksum               = '2240e6fd0ee9db389697a7037bdc60fde74fe303be294c8397d13b3ba02d2666'
  checksum64             = 'd893bfe29ff9c16f8751e9a5c6c2680300df86c6c5be0ab77bbb1cd0d2eede11'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}

Install-ChocolateyPackage @packageArgs
