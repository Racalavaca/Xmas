$list = @()

$secret = $true

while ($secret) {
    $name = Read-Host "Ho Ho Ho, what is your name, little one?"
    $number = Read-Host "What is your favourite number (between 1 and 5)?"

    if ($number -ge 1 -and $number -le 5) {
        $list += [pscustomobject]@{
            Name = $name
            Number = $number
        }
    } else {
        Write-Host "Don't be naughty now, it needs to be between 1 and 5!"
    }

    $ending = Read-Host "Ho Ho Ho, have a merry christmas! *wink*"
    if ($ending -eq "rudolph123") {
        $secret = $false
    }
}

$list | Format-Table
$list | ConvertTo-Html | Out-File "list.html"
