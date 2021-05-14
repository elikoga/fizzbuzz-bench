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
      fizzbuzzes = map singleFizzbuzz numbers
   in concat fizzbuzzes

singleFizzbuzz :: Word64 -> String
singleFizzbuzz n =
  let fizzbuzz = (if n `mod` 3 == 0 then "Fizz" else "") ++ (if n `mod` 5 == 0 then "Buzz" else "")
      str = if null fizzbuzz then show n else fizzbuzz
   in str ++ "\n"