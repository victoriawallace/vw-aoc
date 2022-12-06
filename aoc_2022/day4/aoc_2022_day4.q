// part 1
// parse input - 3D matrix like..
// --> ((5 90;4 90);(52 52; 3 51);(46 81);(45 80);...)
// 5 90  4  90
// 52 52 3  51
// 46 81 45 80 
// ...
m:"I"$"-"vs/:'","vs/:read0`:aoc_2022_day4.txt

// For each item (z coord) or pair in the matrix, check whether the pairs exist within the bounds of the other...
// sum result to find overlapping pairs

sum in'[;m]flip(m[;0;0]|m[;1;0];m[;0;1]&m[;1;1])

// part 2 - find any overlap between pairs

sum max(max'')(within/'')(m;m[;1 0])

