module Logic where

import Data.Array
import Data.Foldable ( asum )

import Game
import Graphics.Gloss.Interface.Pure.Game

isCoorrdCorrect = inRange ((0, 0), (n-1, n-1))

switchPlayer game = 
    case gamePlayer game of
      PlayerX -> Game { gamePlayer = PlayerO }
      PlayerO -> Game { gamePlayer = PlayerX }

full :: [cell] -> Maybe Player
full (cell@(Just player):cells) | all (== cell) cells = Just player
full _                                                 = Nothing
