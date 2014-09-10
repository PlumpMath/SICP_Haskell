import SqrtStream
import StreamUtils

main :: IO ()
main = do
	let s = (sqrtStream 2)
	putStrLn $ show (take 4 s)
	putStrLn $ show (take 4 $ eulerTransform s)
	putStrLn $ show (take 4 $ acceleratedSequence eulerTransform s)
