module PT3
import StdEnv 


/* Write a function that takes a list of numbers
 * as an argument and finds sum of squares of all
 * positive numbers from the list.
 *
 * Ex.: 
 * [1,-3,2,-5,-12] = 1^2 + 2^2 = 5
 */

positiveSquareSum :: [Int] -> Int
positiveSquareSum list = sum (map (\x = x^2) (filter (\x = x >= 0 ) list))

Start = positiveSquareSum [1,-3,2,-5,-12] // 5
// Start = positiveSquareSum [2,5] // 29 
// Start = positiveSquareSum [] // 0
// Start = positiveSquareSum [-3,-2,-8] // 0
