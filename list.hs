main :: IO ()
main = do
  let listOfNumber = [1..10]
  print listOfNumber 
  print(head listOfNumber)
  print(tail listOfNumber)
  print(last listOfNumber)
  print(init listOfNumber) 
  