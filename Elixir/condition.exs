exp = 1000
level = 10
if(exp > 800) do
  level = level + 1
  exp = exp - 800
  IO.puts("LEVEL UP !!")
  IO.puts("Player Status: ")
  IO.puts("Level: #{level}")
  IO.puts("Experience: #{exp}")
else
  IO.puts("You need #{800 - exp} exp. to upgrade your level.")
  IO.puts("Player Status: ")
  IO.puts("Level: #{level}")
  IO.puts("Experience: #{exp}")
end


manapoint = 1000
cond do
  manapoint < 100 -> IO.puts("Fire of World.")
  manapoint >= 100 -> IO.puts("Flying Machine.")
  true -> IO.puts("Mysterious Machine")
end
