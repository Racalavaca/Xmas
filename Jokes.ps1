$jokes = @(
  "What do you get when you cross a snowman and a vampire? Frostbite.",
  "Why was Santa's little helper feeling depressed? Because he had low elf-esteem.",
  "Did you hear about the man who stole an Advent calendar? He got 25 days.",
  "What did the naughty soccer announcer get from Santa Claus? COOOOOOOAAAALLLLLLLL!!!!!!!!",
  "Why couldn't the bicycle stand up by itself? Because it was two-tired.",
  "Why was the snowman looking through the carrots? He was picking his nose!",
  "Why didn’t Rudolph get a good report card? Because he went down in History!",
  "What do you call a Yeti with a six-pack? The Abdominal Snowman!",
  "What is a vegan’s favorite Christmas carol? Soy to the World.”
)

$jokeIndex = Get-Random -Minimum 0 -Maximum ($jokes.Count - 1)

$joke = $jokes[$jokeIndex]

Write-Output $joke