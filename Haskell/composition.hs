{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
f :: Bool -> String 
f x | x = "True" 
    | otherwise = "False" 
g :: String -> Int
g x | x == "True" = 1 
    | otherwise = 0 

main :: IO ()
main = do
  let x = False 
  print((g.f) x) -- gof(x) 
  print(g(f x)) --g(f(x)) 