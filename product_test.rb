require "http"

puts "View all"
response = HTTP.get("http://localhost:3000/products.json")
products = response.parse
pp products
puts ""
puts "View one"
response = HTTP.get("http://localhost:3000/products/5.json")
product = response.parse
pp product
puts ""
puts "Update name:"
name = gets.chomp
response = HTTP.get("http://localhost:3000/products/5.json#update")
