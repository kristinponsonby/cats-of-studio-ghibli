class GhibliAPI
    attr_reader :response

    def self.get_cats_hash
    cats_hash = []
    response = HTTParty.get("https://ghibliapi.herokuapp.com/species/603428ba-8a86-4b0b-a9f1-65df6abef3d3/")
    response["people"].each do |link|
        c_response = HTTParty.get(link)
        c_response.each do |attribute|
            cats_hash << temp = { 
                :name => c_response["name"],
                :gender =>  c_response["gender"],
                :age => c_response["age"],
                :eye_colors => c_response["eye_colors"],
                :hair_colors => c_response["hair_colors"],
                :films => c_response["films"]
            }
        end 
    end
    cats_hash = cats_hash.uniq!
    #puts cats_hash
end 


end