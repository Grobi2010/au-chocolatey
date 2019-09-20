$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = 'd2ce71cec04aed15fce1fbb78c20673e7dc8244beceb224e420415f75fde3c5e'

  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs
