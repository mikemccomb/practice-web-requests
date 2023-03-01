require "http"

system "clear"
puts "What would you like to buy today?"
puts "[1] T-shirt"
puts "[2] Pants"
puts "[3] Hat"
input = gets.chomp.to_i
if input == 1
  puts "Shirt"
end

if input == 2
  puts "Pants"
end

if input == 3
  puts "Hat"
end
