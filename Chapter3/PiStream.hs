module PiStream (piStream) where

import StreamUtils

piStream :: [Double]
piStream = 
	map (*4) $ partialSums $ piSummands 1
	where
		piSummands n = (1.0 / n) : (map negate $ piSummands $ n + 2)
