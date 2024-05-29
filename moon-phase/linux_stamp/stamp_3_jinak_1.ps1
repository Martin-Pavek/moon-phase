cls



[DateTimeOffset]::Now.ToUnixTimeseconds()
# naprosto presny toto ^^

# dale, vetsinou ukazuje kraviny

$date_1 = Get-Date -Date "01/01/1970"
$date_2 = Get-Date
$s1 = (New-TimeSpan -Start $date_1 -End $date_2).TotalSeconds
echo $s1"--"
$s11 = [System.Math]::Round($s1)
echo $s11"===" 


$ED = [Math]::Floor(([decimal](Get-Date(Get-Date).ToUniversalTime()-UFormat "%s")))
echo $ED


$s3 = [int64](Get-Date -UFormat %s)
echo $s3

$s4 = [int64](Get-Date(Get-Date).ToUniversalTime() -UFormat %s)
echo $s4

$s5 = [int64](([datetime]::UtcNow)-(Get-Date "1/1/1970")).TotalSecounds
echo $s5

$s6 = [long] (Get-Date -Date ((Get-Date).ToUniversalTime()) -UFormat %s)
echo $s6
