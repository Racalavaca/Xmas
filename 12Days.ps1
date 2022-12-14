    $Order = @("first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth")
    $TrueLove = @("a Partridge in a Pear Tree", "Two Turtle Doves", "Three French Hens", "Four Calling Birds", "Five Gold Rings", "Six Geese a Laying", "Seven Swans a Swimming", "Eight Maids a Milking", "💃💃💃💃💃💃💃💃💃", "Ten Lords a Leaping", "Eleven Pipers Piping", "Twelve Drummers Drumming")

    for ($i = 0; $i -lt $Order.Length; $i++)
    {
    Write-Output "On the $($Order[$i]) day of Christmas, my true love gave to me:"
    for ($j = $i; $j -ge 0; $j--)
    {
        Write-Output "$($TrueLove[$j])"
    }
    if ($i -gt 0)
    {
        Write-Output "and $($TrueLove[0])"
    }
    }
