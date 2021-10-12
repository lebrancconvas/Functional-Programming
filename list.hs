main :: IO ()
main = do
  let listOfNumber = [1..10]
  print listOfNumber
  print(head listOfNumber)
  print(tail listOfNumber)
  print(last listOfNumber)
  print(init listOfNumber)
  print(null listOfNumber)
  print(reverse listOfNumber)
  print(length listOfNumber)
  print(take 3 listOfNumber)
  print(drop 2 listOfNumber)
  print(maximum listOfNumber)
  print(minimum listOfNumber)
  print(sum listOfNumber)
  print(product listOfNumber)
  print(2 `elem` listOfNumber) 
  