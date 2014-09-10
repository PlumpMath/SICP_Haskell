import GoldenRatioStream
import StreamUtils

main :: IO ()
main = do
	let s = goldenRatioStream
	putStrLn $ show (take 10 s)
	putStrLn $ show (take 10 $ eulerTransform s)
	putStrLn $ show (take 5 $ acceleratedSequence eulerTransform s)
