$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '109d8612b10ef278008cc85df1764cdec4cff9997c3b04ad4694b9467568206a'

  checksumType  = 'sha256'
  silentArgs    = '/quiet /norestart'
}
  
Install-ChocolateyPackage @packageArgs
