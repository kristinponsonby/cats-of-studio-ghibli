class Quote

    attr_reader :sentence, :cat

    @@all = []

    def initialize(sentence, cat)
        @sentence, @cat = sentence, cat
        @@all << self
    end

    def self.all
        @@all
    end


end