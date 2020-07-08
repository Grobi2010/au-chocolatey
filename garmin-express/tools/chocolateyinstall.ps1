$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '0E4A2C4FCB095592169D665A4185D50136512692F71C6D0E33EC6102088F8ABB'

  checksumType  = 'sha256'
  silentArgs    = '/quiet /norestart'
}
  
Install-ChocolateyPackage @packageArgs
