$minecraftPath = "$env:APPDATA\.minecraft"
$usernameCachePath = Join-Path -Path $minecraftPath -ChildPath "usernamecache.json"
$userCachePath = Join-Path -Path $minecraftPath -ChildPath "usercache.json"              
                                                                                          
Write-Output "@@@@@@    @@@@@@      @@@       @@@@@@@@   @@@@@@   @@@@@@@   @@@  @@@     @@@  @@@@@@@  "
Write-Output "@@@@@@@   @@@@@@@      @@@       @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@ @@@     @@@  @@@@@@@  "
Write-Output "!@@       !@@          @@!       @@!       @@!  @@@  @@!  @@@  @@!@!@@@     @@!    @@!    "
Write-Output "!@!       !@!          !@!       !@!       !@!  @!@  !@!  @!@  !@!!@!@!     !@!    !@!    "
Write-Output "!!@@!!    !!@@!!       @!!       @!!!:!    @!@!@!@!  @!@!!@!   @!@ !!@!     !!@    @!!    "
Write-Output " !!@!!!    !!@!!!      !!!       !!!!!:    !!!@!!!!  !!@!@!    !@!  !!!     !!!    !!!    "
Write-Output "     !:!       !:!     !!:       !!:       !!:  !!!  !!: :!!   !!:  !!!     !!:    !!:    "
Write-Output "    !:!       !:!       :!:      :!:       :!:  !:!  :!:  !:!  :!:  !:!     :!:    :!:    "
Write-Output ":::: ::   :::: ::       :: ::::   :: ::::  ::   :::  ::   :::   ::   ::      ::     ::  "  
Write-Output ":: : :    :: : :       : :: : :  : :: ::    :   : :   :   : :  ::    :      :       :"    
Write-Output ""
Write-Output "https://discord.gg/UET6TdxFUk"
Write-Output ""

Write-Host ""
Write-Host ("-" + ("=" * 58) + "-") -ForegroundColor Cyan
Write-Host ("|" + (" " * 16) + "MINECRAFT ACCOUNT ANALYZER" + (" " * 16) + "|") -ForegroundColor Cyan
Write-Host ("-" + ("=" * 58) + "-") -ForegroundColor Cyan
Write-Host ""


if (Test-Path $minecraftPath) {
    if (Test-Path $usernameCachePath) {
        $usernameCacheContent = Get-Content -Path $usernameCachePath -Raw | ConvertFrom-Json
        $otherUsernames = $usernameCacheContent | ForEach-Object {
            $_.PSObject.Properties.Value
        } | Where-Object { $_ -match '^[A-Za-z0-9_]+$' } | Select-Object -Unique
        
        Write-Host "Account trovati in usernamecache.json:" -ForegroundColor Yellow
        $otherUsernames | ForEach-Object { "- $_" }
        Write-Output ""
    }
    else {
        Write-Host "Il file usernamecache.json non esiste nella cartella .minecraft" -ForegroundColor Red
        Write-Output ""
    }
    
    if (Test-Path $userCachePath) {
        $userCacheContent = Get-Content -Path $userCachePath -Raw | ConvertFrom-Json
        $otherAccounts = $userCacheContent | Select-Object -ExpandProperty "name" | Select-Object -Unique
        
        Write-Host "Account trovati in usercache.json:" -ForegroundColor Yellow
        $otherAccounts | ForEach-Object { "- $_" }
    }
    else {
        Write-Host "Il file usercache.json non esiste nella cartella .minecraft" -ForegroundColor Red
    }
}
else {
    Write-Host "La cartella .minecraft non esiste nel percorso: $minecraftPath​" -ForegroundColor Red
}

Write-Host ""
Write-Host ("-" + ("=" * 58) + "-") -ForegroundColor Cyan
Write-Host ("|" + (" " * 19) + "CONTROLLO COMPLETATO" + (" " * 19) + "|") -ForegroundColor Cyan
Write-Host ("-" + ("=" * 58) + "-") -ForegroundColor Cyan
Write-Host ""




