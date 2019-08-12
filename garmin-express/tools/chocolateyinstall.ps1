$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"
  checksum      = '87ABC9F3ACCD2C0FB967C777C428269FE10B0C0DCD53C79DCDE79A4653DD0CC3'
  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs
