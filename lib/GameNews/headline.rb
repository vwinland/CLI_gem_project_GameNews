class GameNews::Headline
    attr_accessor :name, :author, :summary, :url

    def self.today
        #return a bunch of instances of headlines 
        #scraoe kotaku top headlines
    self.scrape_headlines
    end

    def self.scrape_headlines
        headlines = [] 

        headlines << self.scrape_kotaku
        headlines
    end

    def self.scrape_kotaku
        doc = Nokogiri::HTML(open("https://kotaku.com"))
        headline = self.new
        headline.name = doc.search('h6').text.strip

        headline
    end
end
