class GameNews::Scraper 
    
      def self.scrape_kotaku
          doc = Nokogiri::HTML(open("https://kotaku.com"))

          kotaku_headline = doc.search('.content-wrapper').each do |title| 
                  headline = GameNews::Headline.new 
                  
                      headline.name = title.css('h6').text.strip 
                      headline.feature = title.css('h3').text.strip
                      headline.feature_2 = title.css('h1').text.strip
                      headline.feature_3 = title.css('h4').text.strip
                      headline.author = title.css('.item-author').text.strip
                      headline.url = title.css(".content-meta__headline__wrapper a").attribute('href').value
                      headline.story_type = title.css(".content-meta__storyType").text.strip 
            end
         end
      end