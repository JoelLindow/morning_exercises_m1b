require 'pry'
value_library = {
                "0" => 1,
                "1" => 2,
                "2" => 3,
                "3" => 4,
                "4" => 5,
                "5" => 6,
                "6" => 7,
                "7" => 8,
                "8" => 9,
                "9" => 10,
                "A" => 11,
                "B" => 12,
                "C" => 13,
                "D" => 14,
                "E" => 15,
                "F" => 16,
                }

puts ""
puts "Which end of the RGB spectrum dominates your color choice?"
puts "Please enter your Hexidecimal color code to determine dominance of Red, Green or Blue. "
puts ""
print "Your Hexidecimal Code:"
input = gets.chomp

r_value = value_library[input[0]] * value_library[input[1]]
g_value = value_library[input[2]] * value_library[input[3]]
b_value = value_library[input[4]] * value_library[input[5]]

if r_value > g_value && r_value > b_value
  puts ""
  puts "Your RED value is dominant! Embrace the REDNESS!"
elsif g_value > r_value && g_value > b_value
  puts ""
  puts "Your GREEN value is dominant! It's not easy being GREEN!"
elsif b_value > r_value && b_value > g_value
  puts ""
  puts "Your Blue value is dominant! You got the Blues, baby!"
end
