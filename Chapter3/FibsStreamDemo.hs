import FibsStream

main :: IO ()
main = do
	putStrLn $ show (take 20 fibsStream)
