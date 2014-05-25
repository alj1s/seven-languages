puts "Enter a filename to search:\n"

file = gets.chomp

puts "Enter a search term:\n"

searchTerm = gets.chomp

File.open(file, 'r').readlines.each_with_index do | line, idx |

  if (/#{searchTerm}/.match(line))
    puts "**Match** #{idx}: #{line}"
  end

end
