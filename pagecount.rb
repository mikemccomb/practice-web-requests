require "http"

system "clear"
page = HTTP.get("http://localhost:3000/pageviews").parse(:json)
