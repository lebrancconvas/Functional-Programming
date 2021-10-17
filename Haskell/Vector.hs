{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

dotproduct :: [Float] -> [Float] -> Float
dotproduct [x1,y1] [x2,y2] = sqrt(y1**2 + x1**2) * sqrt(y2**2 + x2**2) * cos (abs (atan y1/x1) - (atan y2/x2)) 

crossproduct :: [Float] -> [Float] -> Float
crossproduct [x1,y1] [x2,y2] = sqrt(y1**2 + x1**2) * sqrt(y2**2 + x2**2) * sin (abs (atan y1/x1) - (atan y2/x2)) 

main :: IO ()
main = do
  let vector1 = [1,2]
  let vector2 = [3,5]
  putStrLn "Dot Product of these two vectors: " 
  print(dotproduct vector1 vector2)
  putStrLn "Cross Product of these two vectors: " 
  print(crossproduct vector1 vector2) 
