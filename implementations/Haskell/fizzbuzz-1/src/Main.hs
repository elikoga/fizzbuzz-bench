module Main where

import Data.Word
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let limit = case args of
        [] -> Nothing
        x : _ -> return (read x)
  putStr $ fizzbuzz limit


fizzbuzz :: Maybe Word64 -> String
fizzbuzz limit =
  let numbers = maybe (enumFrom 1) (enumFromTo 1) limit
   in fizzbuzzer numbers 1 1

fizzbuzzer :: [Word64] -> Word64 -> Word64 -> String
fizzbuzzer [] _ _ = []
fizzbuzzer (x : xs) mod3 mod5 = singleFizzbuzz x mod3 mod5 ++ fizzbuzzer xs ((mod3 + 1) `mod` 3) ((mod5 + 1) `mod` 5)

singleFizzbuzz :: Word64 -> Word64 -> Word64 -> String
singleFizzbuzz n mod3 mod5 =
  let fizzbuzz = (if mod3 == 0 then "Fizz" else "") ++ (if mod5 == 0 then "Buzz" else "")
      str = if null fizzbuzz then show n else fizzbuzz
   in str ++ "\n"