cls
    & stamp.exe # stamp.exe v adresary c:\windows
    [DateTimeOffset]::Now.ToUnixTimeSeconds()
    [math]::Round((Get-Date).ToUniversalTime().Subtract((Get-Date "01/01/1970")).TotalSeconds) # o.k
    # ^ taky presny

#---------------------------------------------------------
    [DateTimeOffset]::Now.ToUnixTimeMilliseconds()
    [math]::Round((Get-Date).ToUniversalTime().Subtract((Get-Date "01/01/1970")).TotalMilliseconds)


    [double]::Parse((get-date -uformat "%s"),[cultureinfo][system.threading.thread]::currentthread.currentculture).ToString().Replace(',','').Replace('.','').substring(0,13)
    [double]::Parse((get-date -date ([DateTime]::UtcNow) -uformat "%s"),[cultureinfo][system.threading.thread]::currentthread.currentculture).ToString().Replace(',','').Replace('.','').substring(0,13)
    [string](Get-Date (Get-Date).ToUniversalTime() -uformat '%s').ToString().Replace(',','').Replace('.','').substring(0,13)
    [math]::Round((([TimeSpan]((Get-Date(Get-Date).ToUniversalTime())-(New-Object -Type DateTime -ArgumentList 1970, 1, 1, 0, 0, 0, 0))).TotalMilliseconds))
    
    <# funguje oboje ale co je rychljsi ?
        [math]::Round((Get-Date).ToUniversalTime().Subtract((Get-Date "01/01/1970")).TotalSeconds) # o.k
        [DateTimeOffset]::Now.ToUnixTimeSeconds()
    #>


