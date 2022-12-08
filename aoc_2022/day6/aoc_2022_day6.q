parsed_input:raze read0`:aoc_2022_day6.txt

find_message_marker:{[buffer_length;input_message]
  message_packets:{distinct input_message x+til buffer_length}'[til -buffer_length+count input_message];
  :buffer_length+@[;0]where buffer_length=count each message_packets;}

// part 1
buffer_length_p1:4;
find_message_marker[buffer_length_p1;parsed_input]

// part 2
buffer_length_p2:14;
find_message_marker[buffer_length_p2;parsed_input]
