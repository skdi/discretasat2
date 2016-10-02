divisible::Int->Int->Bool 
divisible x y = (mod x y) ==0


divisoresf ::Int -> [Int]
divisoresf x = [ y | y <- [1..x], divisible x y]

divisores :: Int -> [Int]
divisores x = filter (divisible x) [1..x]

mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a b = mcd b (mod a b)
 