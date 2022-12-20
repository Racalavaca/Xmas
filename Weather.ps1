Install-Module Invoke-WebRequest
$Weather = Invoke-WebRequest -Uri "http://api.openweathermap.org/data/2.5/weather?q=LOCATION&appid=37a2b0cbc6b9d1cc8070d3b26f1f4fd7"
$json = $Weather | ConvertFrom-Json

$kelvin = $json.main.temp
$celsius = $kelvin - 273.15
$intCelsius = [int]$celsius

Write-Output "It's currently $intcelsius degrees outside."

if ($celsius -lt 5) {
    Write-Output "brr! 🥶"
  }
  