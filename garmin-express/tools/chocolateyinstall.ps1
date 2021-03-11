$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '04c84f2c986bf8072400539eb97009a21dd0bef6887e020079467f3485973fcb'

  checksumType  = 'sha256'
  silentArgs    = '/quiet /norestart'
}
  
Install-ChocolateyPackage @packageArgs
