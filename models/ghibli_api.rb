class GhibliAPI
    attr_reader :response

    def initialize
        @response = HTTParty.get("https://ghibliapi.herokuapp.com/species")
    end




end
