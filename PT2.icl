module PT2
import StdEnv

/* Write a function that takes 2 lists of
 * numbers as arguments and returns a list
 * that contains pairwise sum of them. i.e:
 * 1st element should be equal to the sum of
 * 1st elements from both lists, 2nd element
 * should be equal to sum of 2nd elements from
 * both lists.
 * Assume that both lists have the same length
 * Ex.: [1,2,4]
      + [3,0,2]
      = [4,2,6]
 */

pairwiseSum :: [Int] [Int] -> [Int]
pairwiseSum [] [] = []
pairwiseSum [x:xs] [y:ys] = [x+y] ++ (pairwiseSum xs ys)

Start = pairwiseSum [0,0,0,0] [3,4,1,8] // [3,4,1,8]
//Start = pairwiseSum [] [] // []
//Start = pairwiseSum [2] [5] // [7]
