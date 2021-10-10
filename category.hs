{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
ftype :: Int -> Int 
ftype x  = x + 1

gtype :: Int -> Int -> Int
gtype a b = a * b

htype :: Int -> Int -> Bool
htype a b = a > b

fact :: Integer -> Integer
fact n | n == 0 = 1 
       | n /= 0 = n * fact (n-1) 

checkday :: Integer -> String
checkday numday | numday == 1 = "Sunday" 
                | numday == 2 = "Monday" 
                | numday == 3 = "Tuesday" 
                | numday == 4 = "Wednesday" 
                | numday == 5 = "Thursday" 
                | numday == 6 = "Friday" 
                | numday == 7 = "Saturday"

main = do
  print(ftype 99)
  print(gtype 99 99) 
  print(htype 99 98)
  print(fact 5) 
  print(checkday 2)
