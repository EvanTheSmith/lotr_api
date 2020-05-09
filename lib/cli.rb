class LOTR::CLI
attr_reader :movies

    def begin
        input = nil
        LOTR::Scraper.new.scrape
        @movies = LOTR::Movies.all
        puts "Welcome to my Lord of the Rings movie program."
        movie_list
        prompt
        while input != "exit"
            input = gets.strip
            if input == "1"
                puts "Show information for Fellowship"
                puts " "
                prompt
            elsif input == "2"
                puts "Show information for Two Towers"
                puts " "
                prompt
            elsif input == "3"
                puts "Show information for Return of the King"
                puts " "
                prompt
            elsif input == "list"
                puts " "
                movie_list
                prompt
            elsif input == "exit"
                #do nothing
            else
                puts "I do not understand. Please try again."
                prompt
            end
        end
        puts "The program has now terminated. Have a nice day."
    end

    def prompt
        puts " "
        puts "Enter the number corresponding with each row to get more information about each movie."
        puts " "
        puts "Type 'exit' to end the program or 'list' to display the original list again."
        puts " "
    end

    def movie_list
        @movies.each.with_index(1) do |movie, ind|
            puts "#{ind}. #{movie.name}"
        end
    end
end