r:read0`:aoc_2022_day5.txt;
parsed_stack:(reverse')@[;1+4*til 9]flip r til 8;
stack:1 2 3 4 5 6 7 8 9!parsed_stack except'" ";
instructions:"I"$.[;(::;1 3 5)]" "vs/:10 _r;

pop_pins:{[src_stack;num_pins]@[reverse src_stack;til num_pins]}
get_top_of_stack:{[stack]raze get -1#'stack}

// part 1

move_pins_p1:{[stack;instructions]
  num_pins:instructions 0;  src_stack:instructions 1;  dest_stack:instructions 2;
  stack[dest_stack],:pop_pins[stack src_stack;num_pins];
  stack[src_stack]:neg[num_pins]_stack src_stack;
  :stack}

get_top_of_stack move_pins_p1/[stack;instructions]

// part 2 - literally same function but maintaining order of popped items from source stack

move_pins_p2:{[stack;instructions]
  num_pins:instructions 0;  src_stack:instructions 1;  dest_stack:instructions 2;
  stack[dest_stack],:reverse pop_pins[stack src_stack;num_pins];
  stack[src_stack]:neg[num_pins]_stack src_stack;
  :stack}

get_top_of_stack move_pins_p2/[stack;instructions]