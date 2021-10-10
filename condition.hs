main :: IO ()
main = do
  let var1 = 2
  if even var1 then
    putStrLn "Even."
  else
    putStrLn "Odd."