import-module au

$url = 'https://download.garmin.com/omt/express/GarminExpress.exe'
$forumsticky = "https://forums.garmin.com/search?searchJSON=%7B%22keywords%22%3A%22Garmin+Express+Release+Notes%22%2C%22title_only%22%3A1%2C%22author%22%3A%5B%22EXPRESSCUSTOMERCARE%22%5D%2C%22channel%22%3A%5B%2250%22%5D%2C%22sort%22%3A%7B%22relevance%22%3A%22desc%22%7D%2C%22view%22%3A%22%22%2C%22exclude_type%22%3A%5B%22vBForum_PrivateMessage%22%5D%7D&btnSubmit="


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
