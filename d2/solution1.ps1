$m = (Get-Content ./d2/input.txt) -split ','

#initialize
$m[1] = 12
$m[2] = 2

foreach ($i in 0..$($($m.Length - 1) / 4)) {
    $op, $in1, $in2, $out = $m[$($i * 4)..$($i * 4 + 3)]
    switch ($op) {
        1 { $m[$out] = [int]$m[$in1] + [int]$m[$in2] }
        2 { $m[$out] = [int]$m[$in1] * [int]$m[$in2] }
        99 { break }
    }
}
write-output $m[0]