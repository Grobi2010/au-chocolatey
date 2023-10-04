$ErrorActionPreference = 'Stop'
 
 $packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url           = "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '8FD9C1F04002F81E2C1119B854232257A3700BAF12A3689C59F1CCDCFA2F3D6A'

  checksumType  = 'sha256'
  silentArgs    = '/quiet /norestart'
}
  
Install-ChocolateyPackage @packageArgs
