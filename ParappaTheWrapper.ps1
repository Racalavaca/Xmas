$Gifts = "Skateboard", "Switch", "Furby", "Doll", "Coal", "Scarf"

foreach ($Gift in $Gifts) {
    $Paper = "*" * ($Gift.Length + 6)
    Write-Host $Paper
    Write-Host "** $Gift **"
    Write-Host $Paper
}