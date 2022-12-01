parse_file:{[filehandle]"I"$read0 filehandle}                                          / [filehandle] read in .txt file, parse as list of integers

calorie_counter:{[calories]sum each(0,where null calories)cut calories}                / [calories: list of integers] divide calories among elves based on position of empty line and find total caloric count

top_n_calories_total:{[calories;n]sum n#desc calorie_counter calories};                / get total calorie count per elf, find top [N] and return total

input:parse_file`:aoc_2022_day1.txt

// part1 - find max
top_n_calories_total[input;1]

// part 2 - find top 3
top_n_calories_total[input;3]