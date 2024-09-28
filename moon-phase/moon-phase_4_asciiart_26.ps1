cls

# moon phase ascii art

$datum = "{0:  dd.MM.yyyy}" -f (Get-Date)
$cas = "{0:  HH:mm:ss}" -f (Get-Date)

#echo $datum
#echo $cas


$New_Moon=@(
"                             -."
"                                  ."
"                                    -."
"                                       -."
"                                         \"
"                                          \."
"                                            \"
"                                           @ \"
"                                            @|"
"                                              \	 New Moon"
"                                              |" + $datum
"                                              |" + $cas
"                                              |"
"                                            o /"
"                                             |"
"                                           . /"
"                                            /"
"                                          /'"
"                                         /"
"                                       -'"
"                                    -'"
"                                  '"
"                             -'"
)

function out_New_Moon {
for ($i = 0; $i -le ($New_Moon.length - 1); $i ++) {
echo $New_Moon[$i]
}
}


$Waxing_Crescent=@(
"                            --."
"                               `--."
"                                 . `-."
"                                      `-."
"                                    .    \"
"                                        . \."
"                                     O      \"
"                                         @@@ \"
"                                       o @@@@|"
"                                          @@  \	 Waxing Crescent"
"                                      @@@@    |" + $datum
"                                       @@@@@  |" + $cas
"                                      @@@@@@  |"
"                                      @@@@  o /"
"                                             |"
"                                       o   . /"
"                                            /"
"                                      .-. /'"
"                                     `-' /"
"                                  .   .-'"
"                                   .-'"
"                               .--'"
"                            --'"
)  

function out_Waxing_Crescent {
for ($i = 0; $i -le ($Waxing_Crescent.length - 1); $i ++) {
echo $Waxing_Crescent[$i]
}
}


$First_Quarter=@(
"                       -------."
"                         . .   `--."
"                         .       . `-."
"                        .  @@@@@      `-."
"                          @@@@@@@   .    \"
"                          @@@@@@@       . \."
"                           @@@@@@@   O      \"
"                          @@@@@@@@@@     @@@ \"
"                         @@@@@@@@@@@@@ o @@@@|"
"                          @@@@@@@@@@@@    @@  \	 First Quarter"
"                             @@@@@@@@ @@@@    |" + $datum
"                           .  @@   . @@@@@@@  |" + $cas
"                        -.     @@@   @@@@@@@  |"
"                        -'   . @@@@   @@@@  o /"
"                                @@   .       |"
"                         .  O    .     o   . /"
"                               .    .       /"
"                           .      .   .-. /'"
"                                     `-' /"
"                         o    O   .   .-'"
"                              .    .-'"
"                        .      .--'"
"                       -------'"
)


function out_First_Quarter {
for ($i = 0; $i -le ($First_Quarter.length - 1); $i ++) {
echo $First_Quarter[$i]
}
}


<# tezko ric co je presnejsi
$Waxing_Gibbous=@(
"                   -----------."
"                '  o     . .   `--."
"                .    O   .       . `-."
"              @@@@@@@   .  @@@@@      `-."
"            @@@@@@@@@@@   @@@@@@@   .    \"
"          o @@@@@@@@@@@   @@@@@@@       . \."
"            @@@@@@@@@@@.   @@@@@@@   O      \"
"          .   @@@@@@@o    @@@@@@@@@@     @@@ \"
"                       . @@@@@@@@@@@@@ o @@@@|"
"         O  `.-./  .      @@@@@@@@@@@@    @@  \  Waxing Gibbous"
"           --`-'       o     @@@@@@@@ @@@@    |" + $datum
"               `    o      .  @@   . @@@@@@@  |" + $cas
"         @@  @         .-.     @@@   @@@@@@@ |"
"               @@@     `-'   . @@@@   @@@@  o /"
"         @@   @@@@@ .           @@   .       |"
"        @@@@  @\@@    /  .  O    .     o   . /"
"         @@     \ \  /         .    .       /"
"           .    .\.-.___   .      .   .-. /'	 "
"                  `-'                `-' /"
"             o   / |     o    O   .   .-'"
"                /     .       .    .-'"
"                .       .      .--'"
"                   -----------'"
)
#>

$Waxing_Gibbous=@(
"                    ----------."
"                   o     . .   `--."
"                .    O   .       . `-."
"               @@@@@@   .  @@@@@      `-."
"              @@@@@@@@@   @@@@@@@   .    \"
"             @@@@@@@@@@   @@@@@@@       . \."
"            @@@@@@@@@@@.   @@@@@@@   O      \"
"              @@@@@@@o    @@@@@@@@@@     @@@ \"
"                       . @@@@@@@@@@@@@ o @@@@|"
"            `.-./  .      @@@@@@@@@@@@    @@   \  Waxing Gibbous"
"           --`-'       o     @@@@@@@@ @@@@     |" + $datum
"               `    o      .  @@   . @@@@@@@   |" + $cas
"             @         .-.     @@@   @@@@@@@  |"
"               @@@     `-'   . @@@@   @@@@  o  /"
"              @@@@@ .           @@   .       |"
"              @\@@    /  .  O    .     o   . /"
"                \ \  /         .    .       /"
"                .\.-.___   .      .   .-. /'"
"                  `-'                `-' /"
"                 / |     o    O   .   .-'"
"                /     .       .    .-'"
"                        .      .--'"
"                    ----------'"
)



function out_Waxing_Gibbous {
for ($i = 0; $i -le ($Waxing_Gibbous.length - 1); $i ++) {
echo $Waxing_Gibbous[$i]
}
}


$Full_Moon=@(
"                 .------------."
"             .--'  o     . .   `--."
"          .-'   .    O   .       . `-."
"       .-'@   @@@@@@@   .  @@@@@      `-."
"      /@@@  @@@@@@@@@@@   @@@@@@@   .    \"
"    ./    o @@@@@@@@@@@   @@@@@@@       . \."
"   /@@  o   @@@@@@@@@@@.   @@@@@@@   O      \"
"  /@@@@   .   @@@@@@@o    @@@@@@@@@@     @@@ \"
"  |@@@@@               . @@@@@@@@@@@@@ o @@@@|"
" /@@@@@  O  `.-./  .      @@@@@@@@@@@@    @@   \  Full Moon"
" | @@@@    --`-'       o     @@@@@@@@ @@@@     |" + $datum
" |@ @@@        `    o      .  @@   . @@@@@@@   |" + $cas
" |       @@  @         .-.     @@@   @@@@@@@  |"
" \  . @        @@@     `-'   . @@@@   @@@@  o  /"
"  |      @@   @@@@@ .           @@   .       |"
"  \     @@@@  @\@@    /  .  O    .     o   . /"
"   \  o  @@     \ \  /         .    .       /"
"    `\     .    .\.-.___   .      .   .-. /'"
"      \           `-'                `-' /"
"       `-.   o   / |     o    O   .   .-'"
"          `-.   /     .       .    .-'"
"             `--.       .      .--'"
"                 `------------'"
)

function out_Full_Moon {
for ($i = 0; $i -le ($Full_Moon.length - 1); $i ++) {
echo $Full_Moon[$i]
}
}


<# budo to a nebo to podtim, jako druha moznost 
$Waning_Gibbous=@(
"                 .-----------"
"             .--'  o     . .   `"
'          .-'   .    O   .       ."
"       .-'@   @@@@@@@   .  @@@@@"
"      /@@@  @@@@@@@@@@@   @@@@@@@   ."
"    ./    o @@@@@@@@@@@   @@@@@@@"
"   /@@  o   @@@@@@@@@@@.   @@@@@@@   O"
"  /@@@@   .   @@@@@@@o    @@@@@@@@@@"
"  |@@@@@               . @@@@@@@@@@@@@"
" /@@@@@  O  `.-./  .      @@@@@@@@@@@@  	 Waning Gibbous"
" | @@@@    --`-'       o     @@@@@@@@ @@" + $datum
" |@ @@@        `    o      .  @@   . @@@" + $cas
" |       @@  @         .-.     @@@   @@@"
" \  . @        @@@     `-'   . @@@@   @@"
"  |      @@   @@@@@ .           @@   ."
"  \     @@@@  @\@@    /  .  O    ."
"   \  o  @@     \ \  /         .    ."
"    `\     .    .\.-.___   .      ."
"      \           `-'"
"       `-.   o   / |     o    O   ."
"          `-.   /     .       ."
"             `--.       .      ."
"                 `-----------"
)
#>

$Waning_Gibbous=@(
"                 .----------"
"             .--'  o     . ."
"          .-'   .    O   ."
"       .-'@   @@@@@@@   .  @@@@@"
"      /@@@  @@@@@@@@@@@   @@@@@@@"
"    ./    o @@@@@@@@@@@   @@@@@@@"
"   /@@  o   @@@@@@@@@@@.   @@@@@@@"
"  /@@@@   .   @@@@@@@o    @@@@@@@@@@"
"  |@@@@@               . @@@@@@@@@@@@"
" /@@@@@  O  `.-./  .      @@@@@@@@@@@	 Waning_Gibbous"
" | @@@@    --`-'       o     @@@@@@@@   " + $datum
" |@ @@@        `    o      .  @@   .    " + $cas
" |       @@  @         .-.     @@@"
" \  . @        @@@     `-'   . @@@@"
"  |      @@   @@@@@ .           @@"
"  \     @@@@  @\@@    /  .  O    ."
"   \  o  @@     \ \  /         ."
"    `\     .    .\.-.___   .      ."
"      \           `-'"
"       `-.   o   / |     o    O"
"          `-.   /     .       ."
"             `--.       ."
"                 `----------"
)


function out_Waning_Gibbous {
for ($i = 0; $i -le ($Waning_Gibbous.length - 1); $i ++) {
echo $Waning_Gibbous[$i]
}
}


$Third_Quarter=@(
"                 .-------"
"             .--'  o"
"          .-'   .    O   ."
"       .-'@   @@@@@@@   ."
"      /@@@  @@@@@@@@@@@"
"    ./    o @@@@@@@@@@@"
"   /@@  o   @@@@@@@@@@@."
"  /@@@@   .   @@@@@@@o    @"
"  |@@@@@               . @@"
" /@@@@@  O  `.-./  .      @   Third Quarter"
" | @@@@    --`-'       o    " + $datum
" |@ @@@        `    o       " + $cas
" |       @@  @         .-."
" \  . @        @@@     `-'"
"  |      @@   @@@@@ ."
"  \     @@@@  @\@@    /  ."
"   \  o  @@     \ \  /"
"    `\     .    .\.-."
"      \           `-'"
"       `-.   o   / |     o"
"          `-.   /     ."
"             `--.       ."
"                 `-------"
)

function out_Third_Quarter {
for ($i = 0; $i -le ($Third_Quarter.length - 1); $i ++) {
echo $Third_Quarter[$i]
}
}


$Waning_Crescent=@(
"                 .--"
"             .--'"
"          .-'"
"       .-'@"
"      /@@@"
"    ./"
"   /@@  o"
"  /@@@@"
"  |@@@@@"
" /@@@@@      Waning Crescent"
" | @@@@    " + $datum
" |@ @@@    " + $cas
" |"
" \  . @"
"  |"
"  \     @"
"   \  o  @"
"    `\"
"      \"
"       `-."
"          `-."
"             `--."
"                 `--"
)

function out_Waning_Crescent {
for ($i = 0; $i -le ($Waning_Crescent.length - 1); $i ++) {
echo $Waning_Crescent[$i]
}
}


$New_Moon_2=@(
"                 .-"
"             ."
"          .-"
"       .-'"
"      /@"
"    ./"
"   /@@"
"  /@@"
"  |@"
" /@@	 New Moon"
" | @   " + $datum
" |@    " + $cas
" |"
' \'
'  |'
'  \'
'   \'
'    `\'
'      \'
'       `-.'
'          `-'
'             `'
'                 `-'
)

function out_New_Moon_2 {
for ($i = 0; $i -le ($New_Moon_2.length - 1); $i ++) {
echo $New_Moon_2[$i]
}
}


$lp = 2551443
$now = [DateTimeOffset]::Now.ToUnixTimeseconds()
#echo $now
#$now.GetType()
$newmoon = 592500
$phase = ((( $now - $newmoon ) % $lp ))
$phase_number = (((( $phase / 86400 ) + 1 )*100000 ))

<#
Remove-Variable phase_number -Force
echo "cislo faze ?"
[int32] $phase_number = Read-Host
echo $phase_number
#>

if ( $phase_number -lt 184566 ) { out_New_Moon }
elseif ( $phase_number -lt 553699 ) { out_Waxing_Crescent }
elseif ( $phase_number -lt 922831 ) { out_First_Quarter }
elseif ( $phase_number -lt 1291963 ) { out_Waxing_Gibbous }
elseif ( $phase_number -lt 1661096 ) { out_Full_Moon }
elseif ( $phase_number -lt 2030228 ) { out_Waning_Gibbous }
elseif ( $phase_number -lt 2399361 ) { out_Third_Quarter }
elseif ( $phase_number -lt 2768493 ) { out_Waning_Crescent }
else { out_New_Moon_2 }

sleep 10



