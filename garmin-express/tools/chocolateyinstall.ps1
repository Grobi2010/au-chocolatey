$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"
  checksum      = '222f48041c2a5141de1155cfe14c4c2d1645e01d3f6d7b09dccedc76e6daeb7d'
  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs
