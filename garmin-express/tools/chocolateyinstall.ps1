$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '71BD934E249CA1104AD211BDF7EF28A39C0809EC8BE77D313FA45E6D47B84824'

  checksumType  = 'sha256'
  silentArgs    = '/s /a /v'
}
  
Install-ChocolateyPackage @packageArgs
