$DateTime = Get-Date
$stamp_2 = ([DateTimeOffset]$DateTime).ToUnixTimeSeconds()
echo $stamp_2