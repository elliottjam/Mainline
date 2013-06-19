
#& = interesection

puts "----Get on the Mainline!----"
puts "What line are you starting from (N, L, 6)?:"
start_line = gets.chomp.downcase
start_line.to_sym
#if start_line == "6"
  #then start_line = :s
#end
puts "At which station are you getting on?:"
start_station = gets.chomp.downcase
puts "Which line are you getting off on?:"
end_line = gets.chomp.downcase.to_sym
puts "Which station are you getting off at?:"
end_station = gets.chomp.downcase

start_point=start_line.rindex(start_station)
end_point=end_line.rindex(end_station)

result = (start_point - end_point).abs

lines = {
  :n => ['times square', '34th','28th-n','23rd-n','union square','8th'],
  :l => [ '8th','6th','union square','3rd','1st'],
  :s => [ 'grand central','33rd','28th-s','23rd-s','union square','astor place'],
}




