$input = Import-Csv -Path $PSScriptRoot/input.csv

$out = 0
foreach ($ModuleMass in $input.moduleMass) {
    $moduleMass = ([math]::floor($moduleMass / 3)) - 2
    $fuelMass = $moduleMass
    While ($fuelMass -gt 0) {
        $fuelMass = ([math]::floor($fuelMass / 3)) - 2
        if ($fuelMass -gt 0) {
            $moduleMass += $fuelMass
        }
    }
    $out += $moduleMass

}


write-output $out