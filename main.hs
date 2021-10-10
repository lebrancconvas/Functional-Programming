main :: IO ()
main = do
  let num = 2  
  if even num then 
    putStrLn "This Number is Even."
  else putStrLn "This Number is Odd." 