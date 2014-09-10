module StreamUtils(
	partialSums,
	eulerTransform,
	acceleratedSequence
	) where

partialSums :: [Double] -> [Double]
partialSums s = head s : zipWith (+) (tail s) (partialSums s)

eulerTransform :: [Double] -> [Double]
eulerTransform s@(s0:s1:s2:_) =
	hd : tl
	where
		hd = s2 - ((square (s2 - s1)) / (s0 + ((-2) * s1) + s2))
		tl = eulerTransform (tail s)
		square x = x * x

makeTableau :: ([Double] -> [Double]) -> [Double] -> [[Double]]
makeTableau transform s = s : makeTableau transform (transform s)

acceleratedSequence :: ([Double] -> [Double]) -> [Double] -> [Double]
acceleratedSequence transform s = map head (makeTableau transform s)
