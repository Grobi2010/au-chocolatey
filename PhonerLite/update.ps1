import-module au

$releases = 'http://lite.phoner.de/versioninfo.ini'
$url32 = 'https://www.phoner.de/PhonerLiteSetup.exe'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    
    # ini File von lite.phoner einlesen
    $webclient = new-object System.Net.WebClient
    $webpage = $webclient.DownloadString($releases) 
        
    # Zeile der aktuellen Version selektieren
    $webpage = $webpage -split "`n" | select -First 1 -Skip 2 
    
    # Version extrahieren
    $version = ($webpage -split '=' | select -last 1)

     @{
       Version = $version.trim()
    }
}

update
