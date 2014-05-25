(1..16).each do |a|
  print "#{a}, "

  if(a == 4 || a == 8 || a == 12 )
    puts
  end
end

puts
puts

(1..16).each_slice(4) { |a| p a}
