class GameNews::Headline
    attr_accessor :name, :author, :summary, :url


    def self.today
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

        kotakuheadline = doc.search('.curation-module__item__wrapper').each do |title|
            headline = self.new
            headline.name = title.css('h6').text.strip
            headline_author = doc.css('.content-meta__byline').each do |author|
            headline.author = author.css('.item-author').text.strip
            end

        end
        headline
    end


   

    
end
