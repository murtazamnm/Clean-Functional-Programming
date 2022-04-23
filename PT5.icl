module PT5
import StdEnv

/* Write a function that takes list as an argument
 * and returns a new list where elements are sorted in 
 * descending order. Duplicates should be handled in following way:
 * * If number appears only once it is left as it is.
 * * If number appears even times (2,4,6...) keep only 2 copies.
 * * If number appears more than once and odd times (3,5,7) keep only 3 copies.
 * NOTE: odd and even refer to count of number occurence, not the number itself.
 * Ex.: [2,1,3,2] -> [3,2,2,1]
 * Ex.: [3,3,3,3] -> [3,3]
 * Ex.: [2,2,2,2,2] -> [2,2,2]
 */

mySortAux :: [Int] [Int] -> [Int]
mySortAux [] _ = []
mySortAux [x:xs] y
| (length (filter (\e = e == x) y)) == 1 = [x] ++ mySortAux xs y
| (length (filter (\e = e == x) y)) rem 2 == 0 = [x,x] ++ mySortAux (filter (\e = e <> x) xs) y
= [x,x,x] ++ mySortAux (filter (\e = e <> x) xs) y


mySort :: [Int] -> [Int]
mySort list = mySortAux (reverse (sort list)) (reverse (sort list))


//Start = mySort [2,1,3,2] // [3,2,2,1]
//Start = mySort [10,6,2,2,6,3,6,6,3,6,3,7,3] // [10,7,6,6,6,3,3,2,2]
//Start = mySort [1,1,1,1,1,1] // [1,1]
//Start = mySort [2,2,2,2,2] // [2,2,2]
//Start = mySort [] // []
