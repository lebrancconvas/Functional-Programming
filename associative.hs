{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
f :: Int -> Bool
f x = x > 5

g :: Bool -> String
g x | x = "True"
    | otherwise = "False"

h :: String -> Integer
h x | x == "True" = 999999999999
    | otherwise = 111111111111

hog :: Bool -> Integer
hog x = h(g x)

gof :: Int -> String
gof x = g(f x)

hogof :: Int -> Integer
hogof x = h(gof x)

hogof2 :: Int -> Integer
hogof2 x = hog(f x)

main :: IO ()
main = do
  let x = 99 
  if hogof x == hogof2 x then
    putStrLn "Associative Property is True."
  else
    putStrLn "Associative Property is False." 