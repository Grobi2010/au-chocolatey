$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"
  checksum      = 'e4b8437ab17ab120d6f0b24839ce9824b92f37e4ee04a8287fd2c2f4dca5d6cb'
  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs
