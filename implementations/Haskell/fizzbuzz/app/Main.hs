module Main where

import Lib
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let limit = case args of
        [] -> Nothing
        x : _ -> return (read x)
  putStr $ fizzbuzz limit