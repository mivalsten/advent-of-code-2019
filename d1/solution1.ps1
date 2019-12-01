$input = Import-Csv -Path $PSScriptRoot/input.csv

$out = 0
foreach ($ModuleMass in $input.moduleMass) {
    $moduleMass = ([math]::floor($moduleMass / 3)) - 2
    $out += $moduleMass

}


write-output $out