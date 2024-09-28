cls

$xx="  xxx"

$pole=@(
"aaaa"
"bbbb"
"cccc"+$xx
"dddd"
"eeee"
)

function out_pole {
for ($i = 0; $i -le ($pole.length - 1); $i ++) {
echo $pole[$i]
}
}

out_pole
sleep 5


