module hwww
import StdEnv

/* Given a list of integers, check if the numbers in the list satisfy 
the following condition: the number and the position of it in the list 
are both odd or both even. */

check :: [Int] -> Bool
check [] = True
check [x]
| x rem 2 == 0 = True
|otherwise = False
check [x,y]
| (x rem 2 == 0 && y rem 2 <> 0) = True
|otherwise = False
check [x,y:xs]
| ((x rem 2) == 0) && ((y rem 2) <> 0) = True && (check xs)
| otherwise = False
Start = check [0,1,2,3,4,5,6] //True
//Start = check [0,1,2,4,4,5] //Flase
//Start = check [0,1,2] //True
//Start = check [2,1] //True
//Start = check [1] //Flase
//Start = check [] //True
