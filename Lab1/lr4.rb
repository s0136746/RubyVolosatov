
puts "Please,input one command of ruby"
rcom=STDIN.gets.chomp
system("ruby -e\"#{rcom}\"")

puts "\nPlease input one command of OS"
osc = STDIN.gets.chomp
system(osc)