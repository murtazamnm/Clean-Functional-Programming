module PT7
import StdEnv

:: Student = {name :: String ,id :: String ,grades :: {Int}}

/*
* Write a function getTopSumStudent that takes array of students and returns name
* of the student who has highest sum of grade. Assume that array is not empty.
*/


getTopSumStudent :: {Student} -> String
getTopSumStudent studentss = fst (hd (sortBy (\x y = (snd x) > (snd y)) [ (x.name, sum [ a \\ a <-: x.grades]) \\ x <-: studentss]))




student1 = {name="a",id="st1",grades={80,40,70}}
student2 = {name="b",id="st2",grades={120,30,80,40,70}}
student3 = {name="c",id="st3",grades={80,50,40,70}}
student4 = {name="d",id="st4",grades={}}


// Start = getTopSumStudent {student1} // "a"
// Start = getTopSumStudent {student1, student2, student3, student4} // "b"
// Start = getTopSumStudent {student4, student3} // "c"
