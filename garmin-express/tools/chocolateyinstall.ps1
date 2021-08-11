$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '9059eaed1518a9017ede58235c02075db81d6b931e13e32cdeaa2b2734374231'

  checksumType  = 'sha256'
  silentArgs    = '/quiet /norestart'
}
  
Install-ChocolateyPackage @packageArgs
