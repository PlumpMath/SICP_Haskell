module PrimesStream (primesStream) where

primesStream :: [Int]
primesStream =
	sieve [2..]
	where
		sieve (n:ns) = n : (sieve $ filter (`indivisible` n) ns)
		indivisible x y = x `mod` y /= 0
