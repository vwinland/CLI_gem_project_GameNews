class GameNews::CLI
    def call 
        list_stories
        menu
        exit 
    end

    def list_stories
        puts "\n ヽ(•‿•)ノ \ Today's Top Videogame News:"
        GameNews::Scraper.scrape_kotaku
        GameNews::Headline.all.each.with_index(1) do |headline, i|
        
            puts "\n #{i}. #{headline.name} #{headline.feature} #{headline.feature_2} #{headline.feature_3} by #{headline.author} url: #{headline.url} "
        end
    end

    def menu 
       input = nil
       while input != "exit"
            puts "\n ▌│█║▌║  ║▌║█│▌▌│█║▌║  ║▌║█│▌▌│█║▌║  ║▌║█│▌▌│█║▌║  ║▌║█│▌▌│█║▌║  ║▌║█│▌▌│█║▌║  ║▌║█│▌▌│█║▌║  ║▌▌│█║▌║  ║▌║█│▌"
            puts "\n ➔\ Enter the number of the story you'd like more info on or type 'list' to see the list of top headlines again. \n   If you're done, type 'exit'"
            input = gets.strip.downcase
      
       if input.to_i  < 5 && input.to_i > 0 
            the_headline = GameNews::Headline.all[input.to_i-1] 
            puts "\n ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            puts "#{the_headline.name} #{the_headline.feature} #{the_headline.feature_3} #{the_headline.feature_2} by #{the_headline.author} \n Story Type:  #{the_headline.story_type} "
        elsif input == "list"
            GameNews::Headline.all.clear
            list_stories
        else
            puts "\n Oops, not sure what you want. ☹ \ Type list or exit."
            end
        end
    end

    def exit
     puts "Check back tomorrow for more videogame news!"      
    end
end
