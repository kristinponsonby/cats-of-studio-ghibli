class Quote

    attr_reader :content, :cat

    @@all = []

    def initialize(content, cat)
        @content, @cat = content, cat
        @@all << self
    end

    def self.all
        @@all
    end



end