module Main (main) where

import System.Environment
import System.Process

main :: IO ()
main = do
  args <- getArgs
  handleFile (args !! 0)

handleFile :: FilePath -> IO ()
handleFile appPath = do
  _ <- system $ "xattr -d com.apple.quarantine \"" ++ appPath ++ "\""
  putStrLn "Done!"