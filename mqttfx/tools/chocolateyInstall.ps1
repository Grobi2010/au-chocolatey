#https://www.jensd.de/wordpress/

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mqttfx'
  fileType               = 'exe'
  unzipLocation 		 = $toolsDir
  url                    = 'http://jensd.de/apps/mqttfx/1.7.1/mqttfx-1.7.1-windows.exe'
  url64bit               = 'http://jensd.de/apps/mqttfx/1.7.1/mqttfx-1.7.1-windows-x64.exe'
  checksum               = 'aa3902a2b76e427c4ba90b2b49dd337e95e614ba59f8cd64b5a95b5080766965'
  checksum64             = '4adfbb0eee65273bead6ce9885cf064de72d00d437bbaf3b9ff5236634fb6057'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '-q'
  validExitCodes         = @(0)
  softwareName           = 'mqttfx*'
}
Install-ChocolateyPackage @packageArgs
