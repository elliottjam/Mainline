

LINES = {
  'n' => ['times square', '34th','28th-n','23rd-n','union square','8th'],
  'l' => [ '8th','6th','union square','3rd','1st'],
  's' => [ 'grand central','33rd','28th-s','23rd-s','union square','astor place'],
}

def get_start(start_line)
  start_station = gets.chomp.downcase
  LINES[start_line].rindex start_station
end

def get_end(end_line)
  end_station = gets.chomp.downcase
  LINES[end_line].rindex end_station
end

def line_switch(end_line)
    if end_line == "6"
      then end_line = 's'
      puts "Are you getting off at  Grand Central, 33rd, 28th-s, 23rd-s, Union Square, or Astor Place?"
      ending_point = get_end end_line
    elsif end_line == 'n'
      puts "Are you getting off at Times Square, 34th, 28th-n, 23rd-n, Union Square, or 8th?"
      ending_point = get_end end_line
    elsif end_line == 'l'
      puts "Are you getting off at 8th, 6th, Union Square, 3rd, or 1st?'"
      ending_point = get_end end_line
    end
    ending_point
end

puts "----Get on the Mainline!----"
puts "What line are you starting from (N, L, 6)?"
start_line = gets.chomp.downcase
if start_line == "6"
    then start_line = 's'
    puts "Are you starting at  Grand Central, 33rd, 28th-s, 23rd-s, Union Square, or Astor Place?"
    starting_point = get_start start_line
      puts "Which line are you getting off of (N, L, 6)?"
      end_line = gets.chomp.downcase.to_s
    ending_point = line_switch end_line
elsif start_line == 'n'
    puts "Are you starting at Times Square, 34th, 28th-n, 23rd-n, Union Square, or 8th?"
    starting_point = get_start start_line
        puts "Which line are you getting off of (N, L, 6)?"
        end_line = gets.chomp.downcase.to_s
    ending_point = line_switch end_line
elsif start_line == "l"
    puts "Are you starting at 8th, 6th, Union Square, 3rd, or 1st?'"
    starting_point = get_start start_line
        puts "Which line are you getting off of (N, L, 6)?"
        end_line = gets.chomp.downcase.to_s
    ending_point = line_switch end_line

end

if start_line == end_line
  print (starting_point - ending_point).abs
end

if start_line != end_line
    if start_line == 'n' || 's'
      union_square = 4
      first_journey = (starting_point - union_square).abs
      if end_line == 'l'
        union_square = 2
      elsif end_line == 's' || 'n'
        union_square = 4
      end
      second_journey = (ending_point - union_square).abs
      final_journey = first_journey + second_journey
    elsif start_line == 'l'
      union_square = 2
      first_journey = (starting_point - union_square).abs
      union_square = 4
      second_journey = (ending_point - union_square).abs
      final_journey = first_journey + second_journey
    end
puts "Your journey will take #{final_journey} stops."
end




