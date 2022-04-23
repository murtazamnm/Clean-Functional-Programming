module PT66

import StdEnv

/* Write a function altExtend that takes a list of integers
 * and 2-int tuple to extend list with. The result should be
 * the 2-int tuples list, where the first element of the tuple
 * comes from the initial list and the 2nd element comes from the
 * tuple given as a second argument. First number from the tuple
 * should be used to extend 1st, 3rd, 5th... numbers from the list,
 * and 2nd number from tuple should be used for 2nd, 4th, 6th.. numbers.
 * Ex.:
 * [0, 1, 2, 3] (-1, 1) -> [(0, -1), (1, 1), (2, -1), (3, 1)] 
 */


altExtend :: [Int] (Int, Int) -> [(Int, Int)]
altExtend [] _ = []
altExtend [x] (a,b)= [(x,a)]
altExtend [x,y:xs] (a,b) = [(x,a),(y,b)] ++ altExtend xs (a,b)


//Start = altExtend [1,2,3] (0, 1) // [(1, 0), (2, 1), (3, 0)]
// Start = altExtend [1,2,3,4] (0, 1) // [(1, 0), (2, 1), (3, 0), (4, 1)]
//Start = altExtend [1] (0, 1) // [(1, 0)]
//Start = altExtend [] (0, 1) // []