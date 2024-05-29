  #cls

  #$VALstring = [DateTimeOffset]::Now.ToUnixTimeMilliseconds()
    $VALstring = [DateTimeOffset]::Now.ToUnixTimeSeconds()
  echo $VALstring
  & stamp.exe

    try{
        $null=[bigint]$VALstring 
        try{
            $origin = New-Object -Type DateTime -ArgumentList 1970, 1, 1, 0, 0, 0, 0
            $unixTime = $origin.AddSeconds($VALstring)
            $unixTime=Get-Date $unixTime -Format "ddd, dd.MM.yyyy HH:mm:ss,fff"
        }catch{
            try{
                $unixTime = $origin.AddMilliseconds($VALstring)
                $unixTime=Get-Date $unixTime -Format "ddd, dd.MM.yyyy HH:mm:ss,fff"           
            }catch{
                $unixTime=''
            }
        }
        try{
            function ConvertFrom-UnixTime {
                [CmdletBinding(DefaultParameterSetName = "Seconds")]
                param (
                    [Parameter(Position = 0, ValueFromPipeline = $true, Mandatory = $true, ParameterSetName = "Seconds")] [int] $Seconds,
                    [Parameter(Position = 0, ValueFromPipeline = $true, Mandatory = $true, ParameterSetName = "Miliseconds")] [bigint] $Miliseconds
                )
                Begin { $date = (Get-Date "1970-01-01 00:00:00.000Z")}
                Process {
                    switch ($PSCmdlet.ParameterSetName) {
                        "Miliseconds" { $date = $date.AddMilliseconds($Miliseconds) }
                        Default { $date = $date.AddSeconds($Seconds) }
                    }
                }
                End { $date }
            }
            Set-Alias -Name epoch -Value ConvertFrom-UnixTime
            $unixTimeZoned=$VALstring | epoch
            $unixTimeZoned=Get-Date $unixTimeZoned -Format "ddd, dd.MM.yyyy HH:mm:ss,fff"
        }catch{$unixTimeZoned=''}
    }catch{}
    "unixTime = $unixTime"
    "unixTimeZoned = $unixTimeZoned"
    
    sleep 5
