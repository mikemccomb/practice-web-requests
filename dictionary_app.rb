require "http"

search = true
while search
  system "clear"
  puts "What word would you like to define?"
  word = gets.chomp

  word_call = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ADD_KEY").parse(:json)

  # pp word_call[0]
  if word_call.class == Hash
    puts "Hmmm, I couldn't find '#{word}'."
  end

  if word_call.class == Array
    puts "Here is the first definition I could find for '#{word}':"
    puts ""
    index = 0
    while index < word_call.length
      if word_call[index]["text"]
        puts word_call[index]["text"]
        index = word_call.length
      else
        index += 1
      end
    end
  end
  puts ""
  puts "Would you like to look up another word? (y/n)"
  continue = gets.chomp.downcase
  if continue == "n"
    puts "Okie, see ya!"
    search = false
  end
end
