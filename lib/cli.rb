class LOTR::CLI
attr_reader :movies

    def begin
        @movies = LOTR::Scraper.scrape
        prompt
    end

    def prompt
        puts " "
        puts "Welcome to my Lord of the Rings movie app. Enter the number corresponding with each row to get more information about each movie."
        puts " "
        puts "Type 'exit' to end the program."
        puts " "
    end
end