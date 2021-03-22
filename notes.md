#create an API service class
#create a species class to only return the cat species
#create a CLI app that populates the cat species by name
#allows a user to ask what movie the cat appears in
#allows a user to ask what their age is
#allows user to take the cat on a musical adventure




TTY Prompt Example:

prompt = TTY::prompt.new
animal = prompt.ask("what's your favorite animal?")
puts "you're favorite animal is #{animal}"
animal = prompt.select"what's your favorite animal of these animals?", ["dog", "cat", "unicorn"]
puts "you're favorite animal is #{animal}"


How to return only the "cat" characters in the dataset:
GhibliAPI.new.response.find{|character| character["name"] == "Cat"}


How to return the keys for each new instance of the GhibliAPI object:
GhibliAPI.new.response.keys

    