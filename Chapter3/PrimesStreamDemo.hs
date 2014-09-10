import PrimesStream

main :: IO ()
main = do
	putStrLn $ show (take 10 primesStream)
