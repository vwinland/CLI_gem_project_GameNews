class GameNews::CLI
    def call 
        list_stories
        menu
        exit 
    end

    def list_stories
        puts "Today's Top Videogame News:"
        puts <<-DOC.gsub /^\s*/,''
            1. fake data story
            2. fake data story
        DOC
    end

    def menu 
        input = nil
       while input != "exit"
            puts "Enter the number of the story you'd like more info on, type list to see ta list of top headlines, or type exit:"
            input = gets.strip.downcase
            case input 
            when "1"
                puts "More info on story 1..."
            when "2"
                puts "More info on story 2..."
            when "list"
                list_stories
            else
                puts "Not sure what you want, type list or exit."
            end
        end
    end

    def exit 
      puts "Check back tomorrow for more videogame news!"
    end
end
