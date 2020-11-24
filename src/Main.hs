module Main where

import Graphics.Gloss
import Graphics.Gloss.Data.Color

window = InWindow "Function" (screenWidth, screenHeight) (100, 100)
backgroundColor = makeColor 0 0 0 255

main :: IO()
main = play window background 30 initialGame transformGame (const id)
