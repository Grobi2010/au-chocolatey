import-module au

$NoCheckChocoVersion = 'true'
$url = 'https://www.mediamonkey.com/sw/MediaMonkey_'
$forumsticky = "https://www.mediamonkey.com/support/index.php?/Knowledgebase/List/Index/19/downloads"


function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $forumsticky
    
    $content = $download_page.tostring() -split "[`r`n]" | select-string "MediaMonkey for Windows " | Select-Object -First 1
    [regex]$regex = '[0-9][0-9]?[.][0-9][0-9]?[.][0-9][0-9]?[.][0-9][0-9][0-9][0-9]?'
    $version = $regex.Matches($content) |ForEach-Object {$_.Value}
    
    @{
        URL32   = $url + $version + ".exe"
        Version = $version
    }
}


update
