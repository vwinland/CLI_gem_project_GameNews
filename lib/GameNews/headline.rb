class GameNews::Headline
    attr_accessor :name, :author, :summary, :url

    def self.today
        #return a bunch of instances of headlines 
       headline_1 = self.new 
       headline_1.name = "Cool video game news!"
       headline_1.author = "Vanna"
       headline_1.summary = "blahblahblah"
       headline_1.url = "kotaku.com"

       headline_2 = self.new 
       headline_2.name = "Cool video game news!"
       headline_2.author = "Vanna"
       headline_2.summary = "blahblahblah"
       headline_2.url = "kotaku.com"

       [headline_1, headline_2]
    end

end
