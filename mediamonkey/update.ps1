import-module au

$NoCheckChocoVersion = 'true'
$url = 'https://www.mediamonkey.com/MediaMonkey_Setup.exe'
$forumsticky = "https://www.mediamonkey.com/download"


function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $forumsticky
    
    $content = $download_page.tostring() -split "[`r`n]" | select-string "Download MediaMonkey for Windows "
    [regex]$regex = '[0-9][0-9]?.[0-9][0-9]?.[0-9][0-9]?'
    $version = $regex.Matches($content) |ForEach-Object {$_.Value}
    
    @{
        URL32   = $url
        Version = $version
    }
}


update
