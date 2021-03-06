class LOTR::CLI
attr_reader :movies

    def begin
        input = nil
        LOTR::Scraper.new.scrape
        @movies = reorder_movies(LOTR::Movies.all)
        puts " "
        puts "Welcome to my Lord of the Rings movie program."
        movie_list
        prompt
        while input != "exit"
            input = gets.strip
            if input == "1"
                print_movie(input) # Fellowship of the Ring
            elsif input == "2"
                print_movie(input) # Two Towers
            elsif input == "3"
                print_movie(input) # Return of the King
            elsif input.downcase == "list"
                movie_list
                prompt
            elsif input.downcase == "exit"
                break
            else
                puts " "
                puts "I do not understand. Please try again."
                sleep 2
                prompt
            end
        end
        puts " "
        puts "The program has now terminated. Have a nice day."
    end

    def prompt
        puts " "
        puts "Type 'exit' to end the program or 'list' to display the original list again."
        puts " "
    end

    def movie_list
        puts " "
        puts "Enter the number corresponding with each row to get more information about each movie."
        puts " "
        @movies.each.with_index(1) do |movie, ind|
            puts "#{ind}. The Lord of the Rings: #{movie.name}"
        end
    end

    def reorder_movies(movie_list)
        ordered_list = []
        movie = 1
        movie_list.each do |mov|
            movie == 2 ? ordered_list.unshift(mov) : ordered_list << mov
            movie += 1
        end
        ordered_list
    end

    def print_movie(input)
        puts " "
        movie = @movies[input.to_i-1]
        puts "Title: The Lord of the Rings: #{movie.name}"
        puts "Budget: #{movie.budget}"
        puts "Box office revenue: #{movie.box_rev}"
        puts "Award nominations: #{movie.award_nom}"
        puts "Awards won: #{movie.award_win}"
        sleep 1
        prompt
    end

end