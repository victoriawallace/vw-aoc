// .Q.a = "abcdefg..." and .Q.A = "ABCDEFG.."
input:read0`:aoc_2022_day3.txt
// size of each rucksack
size:count each input

// part 1
// split each rucksack in half two get the two compartments
// find the intersecting characters between the two compartments for each rucksack
// '?' assign priority by adding 1 to the index position of each of the resulting intersecting characters from the previous stage
// sum results
sum 1+(.Q.a,.Q.A)?raze distinct each(inter/')("i"$.5*size)cut\:'input

// part 2
// elf groups: divide input into groups of 3; 
// badges: find the intersection of characters between rucksacks and flatten (to 1D array)
// priority assignment: '?' find index position of each badge and +1 to get priority; sum results
sum 1+(.Q.a,.Q.A)?raze distinct each(inter/')3 cut input