cls

# souhlasi presne z linuxem

$stamp = [DateTimeOffset]::Now.ToUnixTimeseconds()
echo $stamp
$t_stamp=$stamp.GetType()
echo $t_stamp

# testovano souhlasi
# 1716887230 bash 
# 1716887329 zde ps

# -------------------------------------------------------------------------------------------------------
# dalsi moznost
$DateTime = Get-Date
$stamp_2 = ([DateTimeOffset]$DateTime).ToUnixTimeSeconds()
#echo $DateTime
echo $stamp_2

$t_stamp_2=$stamp_2.GetType()
echo $t_stamp_2

$s = $stamp.ToString()
echo $s
$s.GetType()

sleep 5

