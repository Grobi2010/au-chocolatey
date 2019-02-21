import-module au

$releases = 'http://personal-backup.rathlev-home.de/persback.html'

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
    $download_page = Invoke-WebRequest -Uri $releases
	
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
