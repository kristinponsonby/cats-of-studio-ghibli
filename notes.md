#create an API service class
#create a species class
#create a CLI app that populates the cat species by name
#allows a user to see what movie the cat appears in and other details about the cat
#allows user to take the cat on a musical adventure




TTY Prompt Example:

prompt = TTY::prompt.new
animal = prompt.ask("what's your favorite animal?")
puts "you're favorite animal is #{animal}"
animal = prompt.select"what's your favorite animal of these animals?", ["dog", "cat", "unicorn"]
puts "you're favorite animal is #{animal}"
