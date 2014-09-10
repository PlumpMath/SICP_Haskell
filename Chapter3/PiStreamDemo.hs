import PiStream
import StreamUtils

main :: IO ()
main = do
	let s = piStream
	putStrLn $ show (take 10 s)
	putStrLn $ show (take 10 $ eulerTransform s)
	putStrLn $ show (take 10 $ acceleratedSequence eulerTransform s)
