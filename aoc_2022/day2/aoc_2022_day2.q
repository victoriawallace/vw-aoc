// Paper beats Rock, Scissors beat Paper, Rock beats Scissors
// Win = 6 points, Draw = 3 points, Loss = 0 points

input:flip@[;0 2]flip read0`:aoc_2022_day2.txt

// part 1
// A: Rock (1 point), B: Paper (2 points), C: Scissors (3 points)
// X: Rock (1 point), Y: Paper (2 points), Z: Scissors (3 points)

strategy:#[9;1 2 3]+("ABC"cross"XYZ")!3 6 0 0 3 6 6 0 3
sum strategy input

// part 2
// A: Rock (1 point), B: Paper (2 points), C: Scissors (3 points)
// X: Lose = 0 points, Y: Draw = 3 points, Z: Win = 6 points

strategy:("XYZ"cross"ABC")!("CABABCBCA")
sum(3*"XYZ"?input[;1])+1+"ABC"?strategy input[;1 0]


