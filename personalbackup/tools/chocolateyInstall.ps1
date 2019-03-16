#http://personal-backup.rathlev-home.de/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'personalbackup'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://personal-backup.rathlev-home.de/download/pb-setup-6.0.0200.exe'
  url64bit               = 'http://personal-backup.rathlev-home.de/download/pb-setup-x64-6.0.0200.exe'
  checksum               = '2edbeb90a5142b9dd17f92cba1787f44cac4500411a89e46ab226fef8dab8860'
  checksum64             = '0bc4eee44a5f328f57d0b41835b1289053337f85fcbe9c58905d76d31e3fd5a4'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORUN'
  validExitCodes         = @(0)
  softwareName           = 'personalbackup*'
}
Install-ChocolateyPackage @packageArgs
