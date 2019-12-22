$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = 'BD137C53BF898E9BDBBC0919F9158FC10C452707BC681292FA5F72CF50A0AA4D'

  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v'
}
  
Install-ChocolateyPackage @packageArgs
