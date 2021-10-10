main :: IO ()
main = do
  let var1 = 2
  if var1 `rem` 2 == 0 then
    putStrLn "Even."
  else
    putStrLn "Odd."