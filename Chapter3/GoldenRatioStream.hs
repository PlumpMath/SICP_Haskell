module GoldenRatioStream (goldenRatioStream) where

import FibsStream

goldenRatioStream :: [Double]
goldenRatioStream =
	diffs $ drop 3 fibsStream
	where
		diffs xs@(x1:x2:_) = x2 / x1 : diffs (tail xs)
