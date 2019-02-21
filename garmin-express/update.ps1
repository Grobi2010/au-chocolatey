import-module au

$releases = 'https://download.garmin.com/omt/express/GarminExpress.exe'
$forumsticky = "https://forums.garmin.com/search?searchJSON=%7B%22keywords%22%3A%22Garmin+Express+Release+Notes%22%2C%22title_only%22%3A1%2C%22author%22%3A%5B%22EXPRESSCUSTOMERCARE%22%5D%2C%22channel%22%3A%5B%2250%22%5D%2C%22sort%22%3A%7B%22relevance%22%3A%22desc%22%7D%2C%22view%22%3A%22%22%2C%22exclude_type%22%3A%5B%22vBForum_PrivateMessage%22%5D%7D&btnSubmit="


function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $forumsticky
	
	$url64 = $download_page.Links | ? href -match '\.exe$' | % href |select -First 1 -skip 1
    $url32 = $download_page.Links | ? href -match '\.exe$' | % href |select -First 1
    $version = $url32.Substring(0,$url32.Length-4) -split '/' -split '-' | select -last 1

    @{
        URL32   = 'http://personal-backup.rathlev-home.de/' + $url32
        URL64   = 'http://personal-backup.rathlev-home.de/' + $url64
        Version = $version
    }
}

update