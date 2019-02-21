$packageArgs = @{
  packageName   = "garmin-express"
  fileType      = "EXE"
  url			= "https://download.garmin.com/omt/express/GarminExpress.exe"
  checksum      = 'B8337C124D6BEE80CD5D8B89F6442E09F52CCB236C3E39B63D0DE414FDA6AB21'
  checksumType  = 'sha256'
  silentArgs    = '/s /a /s /v"/qb"'
}
  
Install-ChocolateyPackage @packageArgs