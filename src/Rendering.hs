module Rendering where

import Data.Array

import Graphics.Gloss 

import Game

boardGridColor = makeColorI 255 255 255 255
playerXColor = makeColorI 255 50 50 255
playerOColor = makeColorI 50 100 255 255
tieColor = greyN 0.5

boardAsRunningPicture board = 
    pictures [ color playerXColor $ xCellsOfBoard board
             , color playerOColor $ oCellsOfBoard board
             , color boardGridColor $ boardGrid
             ]

outcomeColor (Just PlayerX) = playerXColor
outcomeColor (Just PlayerO) = playerOColor

snapPictureToCell picture (row, column) = translate x y picture 
    where x = fromIntegral column * cellWidth + cellWidth * 0.5
          y = fromIntegral row * cellHeight + cellHeight * 0.5

xCell :: Picture 
xCell = pictures[ rotate 45.0 $ rectangleSolid side 10.0
                , rotate(-45.0) $ rectangleSolid side 10.0
                ] where side = min cellWidth cellHeight * 0.75

oCell :: Picture 
oCell = thickCircle radius 10.0
    where radius = min cellWidth cellHeight * 0.25

cellsOfBoard :: Board -> Cell -> Picture -> Picture
