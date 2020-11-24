module Game where

import Data.Array

data Player = PlayerX | PlayerO deriving (Eq, Show)
type Cell = Maybe Player 
data State = Running | Gameover (Maybe Player) deriving (Eq, Show)

type Board = Array (Int, Int) Cell

data Game = Game { gameBoard :: Borad
                 , gamePlayer :: Player
                 , gameState :: State 
                 } deriving (Eq, Show)