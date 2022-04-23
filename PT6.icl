module PT6
import StdEnv

/* Write a function `extendWith` that takes 2 arguments:
* a list of 2 integer tuples and a list of integers. Function
* should return a new list that contains 3 int tuples, where
* i-th tuple takes 1st and 2nd integers from the i-th 2-int tuple
* from the first list and 3rd integer is i-th int from the second
* list
* [ (1, 2), [ 4 [ (1, 2, 4),
* (2, 3) + 5 = (2, 3, 5)
* ] ] ]
*/


// extendWith [] _ = []
// extendWith list [] = []
// extendWith tuples list = [(fst x, snd x, y) \\ x <- tuples & y <- list]

extendWith :: [(Int, Int)] [Int] -> [(Int, Int, Int)]
extendWith [] _ = []
extendWith _ [] = []
extendWith [(a,b):rest] [x:xs] = [(a,b,x)] ++ extendWith rest xs

//Start = extendWith [(1, 2), (2, 3)] [1, 1] // [(1,2,1),(2,3,1)]
//Start = extendWith [(1, 2), (2, 3)] [1, 1, 1] // [(1,2,1),(2,3,1)]
//Start = extendWith [(1, 2), (2, 3), (0, 0)] [1, 1] // [(1,2,1),(2,3,1)]
//Start = extendWith [] [1..10] // []
//Start = extendWith [(0, 0)] [10] // [(0, 0, 10)]

