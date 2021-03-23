class GhibliAPI
    attr_reader :response

    def initialize
    cats = []
    response = HTTParty.get("https://ghibliapi.herokuapp.com/species/603428ba-8a86-4b0b-a9f1-65df6abef3d3/")
    response["people"].each do |link|
        c_response = HTTParty.get(link)
        c_response.each do |attribute|    
                hash = { 
                :name => c_response["name"],
                :gender =>  c_response["gender"],
                :age => c_response["age"],
                :eye_color => c_response["eye_color"],
                :hair_color => c_response["hair_color"],
                :films => c_response["films"]
             }
             cats << hash
                end 
            end
    @response = cats.uniq!
    #puts cats_hash
    end 
 

end