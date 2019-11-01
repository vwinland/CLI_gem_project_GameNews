class GameNews::Headline
    attr_accessor :name, :author, :story_type, :url, :feature, :feature_2, :feature_3

    @@all = [] 

    def initialize 
        @@all << self 
    end

    def self.all 
        @@all 
    end
end
