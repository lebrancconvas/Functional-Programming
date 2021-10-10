main :: IO ()
main = do
  let num = 2
  if even num then
    putStrLn "Even Number."
  else putStrLn "Odd Number." 
