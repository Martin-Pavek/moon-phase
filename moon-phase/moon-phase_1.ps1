<#

#!/bin/bash
moonphase(){
  local lp=2551443
  local now=$(date -u +"%s")
  # echo $(date -u +"%s") && echo $(date +"%s")
  # zadnej rozdil ^
  local newmoon=592500
  local phase=$((($now - $newmoon) % $lp))
  local phase_number=$((((phase / 86400) + 1)*100000))

  # Multiply by 100000 so we can do integer comparison.  Go Bash!

  if   [ $phase_number -lt 184566 ];  then phase_icon="new"
  elif [ $phase_number -lt 553699 ];  then phase_icon="waxing crescent"
  elif [ $phase_number -lt 922831 ];  then phase_icon="first quarter"
  elif [ $phase_number -lt 1291963 ];  then phase_icon="first quarter"
  elif [ $phase_number -lt 1661096 ]; then phase_icon="full"
  elif [ $phase_number -lt 2030228 ]; then phase_icon="waning gibbous"
  elif [ $phase_number -lt 2399361 ]; then phase_icon="last quarter"
  elif [ $phase_number -lt 2768493 ]; then phase_icon="waning crescent"
  else
    phase_icon="new"
  fi
  echo $phase_icon
}

moonphase
#>

cls
$lp = 2551443
$now = [DateTimeOffset]::Now.ToUnixTimeseconds()
#echo $now
#$now.GetType()
$newmoon = 592500
$phase = ((($now - $newmoon) % $lp))
$phase_number = (((($phase / 86400) + 1)*100000))

  if ( $phase_number -lt 184566 ) { $phase_icon="new" }
  elseif ( $phase_number -lt 553699 ) { $phase_icon="waxing crescent" }
  elseif ( $phase_number -lt 922831 ) { $phase_icon="first quarter" }
  elseif ( $phase_number -lt 1291963 ) { $phase_icon="first quarter"}
  elseif ( $phase_number -lt 1661096 ) { $phase_icon="full" }
  elseif ( $phase_number -lt 2030228 ) { $phase_icon="waning gibbous" }
  elseif ( $phase_number -lt 2399361 ) { $phase_icon="last quarter" }
  elseif ( $phase_number -lt 2768493 ) { $phase_icon="waning crescent" }
  else { $phase_icon="new" }

  echo $phase_icon

