$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '65a62ffdd18c8cc5080b13aa2cba79edbe610a1809c92160d20330fb692d959d'

  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs
