#odpovida naprosto presne jako v linuxu, viz screenshot
$stamp = [DateTimeOffset]::Now.ToUnixTimeseconds()
echo $stamp
$t_stamp = $stamp.GetType()
echo $t_stamp

