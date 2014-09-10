module FibsStream (fibsStream) where

fibsStream :: [Double]
fibsStream = 0 : 1 : zipWith (+) (tail fibsStream) fibsStream
