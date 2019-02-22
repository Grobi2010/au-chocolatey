import-module au

$releases = 'http://www.jensd.de/apps/mqttfx/appcast.xml'

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
    # $download_page = Invoke-WebRequest -Uri $releases

    $webclient = new-object System.Net.WebClient
    [xml]$webpage = $webclient.DownloadString($releases)
    $url64 = $webpage.rss.channel.item.enclosure | ? { $_.url -Match "\-x64.exe$"} | select Url
    $version = $url64.url.Substring(0,$url64.url.Length-4) -split '/' | select -last 1 -Skip 1
    
    $url32 = $webpage.rss.channel.item.enclosure | ? { $_.url -Match "\windows.exe$"} | select Url
    

    @{
        URL64   = $url64.url
        URL32   = $url32.url
        Version = $version
    }
}

update
