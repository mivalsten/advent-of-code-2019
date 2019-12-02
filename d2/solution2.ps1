foreach ($a in 0..99) {
    foreach ($b in 0..99) {
        $m = (Get-Content ./d2/input.txt) -split ','
        $m[1] = $a
        $m[2] = $b
        foreach ($i in 0..$($($m.Length - 1) / 4)) {
            $op, $in1, $in2, $out = $m[$($i * 4)..$($i * 4 + 3)]
            switch ($op) {
                1 { $m[$out] = [int]$m[$in1] + [int]$m[$in2] }
                2 { $m[$out] = [int]$m[$in1] * [int]$m[$in2] }
                99 { break }
            }
        }
        if ($m[0] -eq 19690720) {
            Write-Output $($a * 100 + $b)
            exit
        }
    }

}