class Cat

    attr_accessor :name, :gender, :age, :eye_color, :hair_color, :films

    @@all = []
    
    def initialize(hash)
        @name = hash[:name]
        @gender = hash[:gender]
        @age = hash[:age]
        @eye_color = hash[:eye_color]
        @hair_color = hash[:hair_color]
        @films = hash[:films]
        @@all << self
    end

    def self.all
        @@all
    end

   def self.find_by_name(name)
    self.all.find{|cat| cat.name == name}
   end

   def print_details
    puts "Name: #{self.name}"
    puts "Gender: #{self.gender}"
    puts "Age: #{self.age}"
    puts "Eye Colors: #{self.eye_color}"
    puts "Hair Colors: #{self.hair_color}"
    puts "Films: #{self.films}"
   end

   def add_quote(content)
     Quote.new(content, self)
   end

   def quotes
     Quote.all.select{|quote| quote.cat == self}
   end

   def print_quotes
        if quotes.any?
            quotes.each do |quote|
                puts "#{quote.content}"
            end
        else puts "#{name} has no quotes. : ("
        end
    end

    def pet_cat
        puts "purrrrr =^..^="
    end

end
