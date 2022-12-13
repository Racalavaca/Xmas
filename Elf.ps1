$xmas = "The best way to spread christmas cheer is singing loud for all to hear!"

$Emojis = "❄️", "🔔", "☃️", "🦌", "🧝", "🎅", "🤶", "🎄", "🎁", "🕯️", "🎶", "⭐", "🌠"

$introemoji = -join ($Emojis | Get-Random -Count 3)
$endemoji = -join ($Emojis | Get-Random -Count 3)

    $MerryXmas = $xmas.tocharArray() | ForEach-Object {
      $i = Get-Random -Minimum 1 -Maximum 50
      switch ($i) {
        { $i -le 50 -AND $i -ge 45 } { $colour = "$([char]0x1b)[1;5;38;5;199m" }
        { $i -le 45 -AND $i -ge 40 } { $colour = "$([char]0x1b)[1;5;38;11;199m" }
        { $i -le 40 -AND $i -ge 30 } { $colour = "$([char]0x1b)[1;38;5;50m" }
        { $i -le 20 -and $i -gt 15 } { $colour = "$([char]0x1b)[1;5;38;5;1m" }
        { $i -le 16 -and $i -gt 10 } { $colour = "$([char]0x1b)[1;38;5;47m" }
        { $i -le 10 -and $i -gt 5 }  { $colour = "$([char]0x1b)[1;5;38;5;2m" }
        default { $colour = "$([char]0x1b)[1;37m" }
         }
      "$colour$_$([char]0x1b)[0m"
    } 

    Write-Host "$introemoji $($MerryXmas -join '') $endemoji"