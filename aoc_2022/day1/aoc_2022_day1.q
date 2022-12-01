calorie_counter:{[filehandle]                                                          / [filehandle] filehandle of input .txt file
  calories:"I"$read0 filehandle;                                                       / read in input as list of integers
  :sum each(0,where null calories)cut calories}                                        / divide calories among elves based on position of empty line and find total caloric count

most_calories_total:{[filehandle]max calorie_counter[filehandle]};                     / get total calorie count per elf, find maximum

top3_most_calories_total:{[filehandle]sum 3#desc calorie_counter[filehandle]};         / get total calorie count per elf, find top 3

