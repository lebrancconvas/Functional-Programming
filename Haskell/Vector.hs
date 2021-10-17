{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

magnitude :: [Float] -> Float
magnitude [x,y] = sqrt(x**2 + y**2)

vectorangle :: [Float] -> Float
vectorangle [x,y] = atan y/x

vectcombineangle :: [Float] -> [Float] -> Float
vectcombineangle [x1,y1] [x2,y2] = abs (vectorangle [x1,y1] - vectorangle [x2,y2]) 

dotproduct :: [Float] -> [Float] -> Float
dotproduct [x1,y1] [x2,y2] = magnitude [x1,y1] * magnitude [x2,y2] * cos (vectcombineangle [x1,y1] [x2,y2])

crossproduct :: [Float] -> [Float] -> Float
crossproduct [x1,y1] [x2,y2] = magnitude [x1,y1] * magnitude [x2,y2] * sin (vectcombineangle [x1,y1] [x2,y2])

main :: IO ()
main = do
  let vector1 = [1,2]
  let vector2 = [10,20]
  putStrLn "Dot Product of these two vectors: "
  print(dotproduct vector1 vector2)
  putStrLn "Cross Product of these two vectors: "
  print(crossproduct vector1 vector2)
