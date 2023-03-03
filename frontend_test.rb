require "http"
require "tty-prompt"




POST http://localhost:3000/products.json
Content-Type: application/json

{
  "name": "Gloves",
  "price": 12,
  "image_url": "https://cdn.pixabay.com/photo/2015/11/07/17/20/hands-1032312_1280.jpg",
  "description": "My hands. So cold."
}