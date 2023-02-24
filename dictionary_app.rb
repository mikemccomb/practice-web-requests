require "http"

search = true
while search
  puts "What word would you like to define?"
  word = gets.chomp

  word_call = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=API_KEY").parse(:json)

  p word_call

  puts "Here are the definitions I could find for '#{word}'"

  word_call.each do |entry|
    # puts "Part of speech: #{entry["partOfSpeech"]}"
    if entry["text"].class == String
      puts entry["text"]
    end
    puts ""
  end

  puts "Would you like to look up another word? (y/n)"
  continue = gets.chomp.downcase
  if continue == "n"
    puts "Okie, see ya!"
    search = false
  end
end
