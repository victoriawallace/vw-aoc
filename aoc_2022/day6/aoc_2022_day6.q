parsed_input:raze read0`:aoc_2022_day6.txt

find_message_marker:{[buffer_length;input_message]
  message_packets:input_message@(til neg[buffer_length]+count input_message)+\:til buffer_length;
  :buffer_length+@[;0]where buffer_length=count each distinct each message_packets;}

// part 1
buffer_length_p1:4;
find_message_marker[buffer_length_p1;parsed_input]

// part 2
buffer_length_p2:14;
find_message_marker[buffer_length_p2;parsed_input]
