class GameNews::CLI
    def call 
        list_stories
        # menu
        # exit 
    end


    def list_stories
        puts "Today's Top Videogame News:"
        @headlines = GameNews::Scraper.today
        @headlines.each.with_index(1) do |headline, i|
            puts "#{i}. #{headline.name} - #{headline.author}: #{headline.summary} "
        end
    end

    # def menu 
    #     input = nil
    #    while input != "exit"
    #         puts "Enter the number of the story you'd like more info on, type list to see ta list of top headlines, or type exit:"
    #         input = gets.strip.downcase

    #         if input.to_i > 0
    #             the_headline = @headlines[input.to_i-1]
    #             puts "#{the_headline.name} - #{the_headline.author}: #{the_headline.summary} "
    #         elsif input == "list"
    #             list_stories
    #         else
    #             puts "Not sure what you want, type list or exit."
    #         end
    #     end
    # end

    # def exit 
    #   puts "Check back tomorrow for more videogame news!"
    # end
end
