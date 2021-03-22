class Cat

    attr_accessor :name, :gender, :age, :eye_colors, :hair_colors, :films

    @@all = []

    def initialize(hash)
         @name = hash["name"]
         @gender = hash["gender"]
         @age = hash["age"]
         @eye_colors = hash["eye_colors"]
         @hair_colors = hash["hair_colors"]
         @films = hash["films"]
         @@all << self

    end

    def self.all
        @@all
    end


    #def self.new_cat(api_cats)
     #   api_cats.each do |cat| 
       #     Cat.new(cat)
     #   end
   # end


  # def self.find_by_name(name)
   # self.all.find{|cat| cat.name == name}
   #end


   #def print_details
   # puts self.name

   #end






end
    #metaprogram initialize:
    # hash.each do |key, value| 
        #self.send("#{key}=", value)
        #end
        #@@all << self 
    