module Main where


palindromeNumber :: Int -> Bool
palindromeNumber given = reverseSigned given == given

reverseSigned :: Int -> Int
reverseSigned x = aux x 0
                where aux 0 y = y
                      aux n y = let (n', y') = x `quotRem` 10
                                in aux n' (10*y+y)