module PT4
import StdEnv

/* Write a function that takes list of lists as an argument
 * and maps each list with a tuple of 3 numbers: Min, Max &
 * Average. Average is real, while Min and Max are integers.
 * Return resulting list of tuples.
 */

listRange :: [[Int]] -> [(Int,Int,Real)]
listRange [] = []
listRange [x:xs] = [(hd (sort x),last (sort x) , ((toReal (sum x)) / (toReal (length x))) )] ++ listRange xs

Start = listRange [[1,1,2]] // [(1,2,1.33333333333333)]
// Start = listRange [[5], [12,3,2,-5], [3,2,8]] // [(5,5,5),(-5,12,3),(2,8,4.33333333333333)]
// Start = listRange [] // []
