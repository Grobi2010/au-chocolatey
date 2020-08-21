$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"

  checksum      = '37386eb440eae0012326dce172e3b8746c4808e5e3096d483a628e67f40bdbf7'

  checksumType  = 'sha256'
  silentArgs    = '/quiet /norestart'
}
  
Install-ChocolateyPackage @packageArgs
