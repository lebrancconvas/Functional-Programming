ftype :: Int -> Int 
ftype x  = x + 1

gtype :: Int -> Int -> Int
gtype a b = a * b

htype :: Int -> Int -> Bool
htype a b = a > b

main = do
  print(ftype 99)
  print(gtype 99 99) 
  print(htype 99 98)
