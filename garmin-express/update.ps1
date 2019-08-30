import-module au

$url = 'https://download.garmin.com/omt/express/GarminExpress.exe'
$forumsticky = "https://forums.garmin.com/apps-software/mac-windows-software/f/garmin-express-windows/170865/garmin-express-release-notes"


function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $forumsticky
    
    $content = $download_page.tostring() -split "[`r`n]" | select-string "Garmin Express v"
    [regex]$regex = '[0-9][0-9]?.[0-9][0-9]?.[0-9][0-9]?'
    $version = $regex.Matches($content) |ForEach-Object {$_.Value}
    
    @{
        URL32   = $url
        Version = $version
    }
}


update
