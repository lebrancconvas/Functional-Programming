{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

magnitude :: [Float] -> Float
magnitude [x,y,z] = sqrt(x**2 + y**2 + z**2)

vectorangle :: [Float] -> Float
vectorangle [x,y,z] = atan (z/sqrt(x**2 + y**2))

vectcombineangle :: [Float] -> [Float] -> Float
vectcombineangle [x1,y1,z1] [x2,y2,z2] = abs (vectorangle [x1,y1,z1] - vectorangle [x2,y2,z2])

-- dotproduct :: [Float] -> [Float] -> Float
-- dotproduct [x1,y1] [x2,y2] = magnitude [x1,y1] * magnitude [x2,y2] * cos (vectcombineangle [x1,y1] [x2,y2])

dotproduct :: [Float] -> [Float] -> Float
dotproduct [x1,y1,z1] [x2,y2,z2] = (x1*x2) + (y1*y2) + (z1*z2)

crossproduct :: [Float] -> [Float] -> [Float]
crossproduct [x1,y1,z1] [x2,y2,z2] = [y1*z2 - y2*z1, x1*z2 - x2*z1, x1*y2 - x2*y1]

crossproductmagnitude :: [Float] -> [Float] -> Float
crossproductmagnitude [x1,y1,z1] [x2,y2,z2] = magnitude [x1,y1,z1] * magnitude [x2,y2,z2] * sin (vectcombineangle [x1,y1,z1] [x2,y2,z2])

cosine :: [Float] -> [Float] -> Float
cosine [x1,y1,z1] [x2,y2,z2] = dotproduct [x1,y1,z1] [x2,y2,z2] / (magnitude [x1,y1,z1] * magnitude [x2,y2,z2])

main :: IO ()
main = do 
  let vector1 = [1,2,5]
  let vector2 = [3,5,10]
  let vector3 = [12,14,20]
  putStrLn "Dot Product of these two vectors: "
  print(dotproduct vector1 vector2)
  putStrLn "Cross Product of these two vectors: "
  print(crossproduct vector1 vector3)
  print(crossproductmagnitude vector1 vector3)
  print(cosine vector1 vector3) 