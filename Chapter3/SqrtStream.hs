module SqrtStream (sqrtStream) where

sqrtStream :: Double -> [Double]
sqrtStream x = 
	guesses
	where
		guesses = 1 : map improveGuess guesses
		improveGuess guess = average guess (x / guess)
		average a b = (a + b) / 2
