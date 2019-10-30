class GameNews::Scraper 
    # def self.today
    #     self.scrape_headlines
    #   end
  
    #   def self.scrape_headlines
    #       headlines = [] 
  
    #       headlines << self.scrape_kotaku
    #       headlines
    #   end
  
      def self.scrape_kotaku
          doc = Nokogiri::HTML(open("https://kotaku.com"))
           
          #kotaku_headline = doc.search('.curation-module__item__wrapper').each_with_index do |title,index|
          kotaku_headline = doc.search('.content-wrapper').each do |title| 
                  headline = GameNews::Headline.new
                  
                      headline.name = title.css('h6').text.strip
                      #headline_author = doc.search('.content-meta__byline').each do |author|
                      headline.author = title.css('.item-author').text.strip
                      #headline_url = headline.css('')
                          #end
                       
                  #binding.pry
                  end
                  #binding.pry
                end
      end