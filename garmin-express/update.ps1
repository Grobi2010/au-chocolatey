import-module au

$url = 'https://download.garmin.com/omt/express/GarminExpress.exe'
# $forumsticky = "https://support.garmin.com/en-US/?productID=168768&tab=software"
$forumsticky = "https://www.computerbild.de/download/Garmin-Express-15153001.html"
# $forumsticky = "https://www.chip.de/downloads/Garmin-Express_88198672.html"

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $forumsticky
    
    # $content = $download_page.tostring() -split "[`r`n]" | select-string "Garmin Express for Windows: "
    $content = $download_page.tostring() -split "[`r`n]" | select-string "Garmin Express "
	# $content = $download_page.tostring() -split "[`r`n]" | select-string "softwareVersion"
    [regex]$regex = '[0-9]\.[0-9][0-9]?\.?[0-9]?[0-9].?[0-9]?[0-9]'
    $version = $regex.Match($content) |ForEach-Object {$_.Value}
    
    @{
        URL32   = $url
        Version = $version
    }
}


update
