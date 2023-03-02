require "http"

puts "View all"
response = HTTP.get("http://localhost:3000/products.json")
products = response.parse
pp products
puts ""
puts "View one"
response = HTTP.get("http://localhost:3000/products/2.json")
product = response.parse
pp product
