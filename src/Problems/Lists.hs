module Problems.Lists (myLast, myButLast, myButLast', myButLast'', elementAt)  where

import Data.Char

-- Problem 1 : myLast function
myLast :: [a] -> a
myLast [] = error "cannot call last on empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Problem 2 : last but one
myButLast :: [a] -> a
myButLast = head . (tail . reverse)

myButLast' [x,_]  = x
myButLast' (_:xs) = myButLast' xs

myButLast'' = head . reverse . init

-- Problem 3: K'th element of a list
elementAt :: [a] -> Int -> a
elementAt xs n = if (n == 1) then head xs else elementAt (tail xs) (n - 1)