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


   #end

      #def self.new_cat(api_cats)
     #api_cats.each do |cat| 
       # Cat.new(cat)
     #end
   # end






end
    #metaprogram initialize:
    # hash.each do |key, value| 
        #self.send("#{key}=", value)
        #end
        #@@all << self 
    