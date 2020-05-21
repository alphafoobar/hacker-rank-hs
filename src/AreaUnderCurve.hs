module AreaUnderCurve ( solve ) where

step = 0.001

roundMe :: (Double) -> Double
roundMe x = ((/10) $ fromIntegral $ round (x * 10))

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r as bs = do 
  let ln = fromIntegral l
  let rn = fromIntegral r
  let heights = [ sum ([i * (x**j) | (i, j) <- zip (fromIntegral `map` as) (fromIntegral `map` bs)]) | x <- [ln, ln+step .. rn]]
  let sumOfHeights = sum heights
  let volume = pi * sum [ h**2 | h <- heights]
  [ (roundMe (sumOfHeights * step)), (roundMe (volume * step)) ]
