$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '0897cccfbb28d5b2162ec05cc7127f233e5ef92ab0a66f382e518b0ca842f3e8'

  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs
