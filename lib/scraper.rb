class LOTR::Scraper
# This class is responsible for scraping my LOTR API, using my personal key
    def scrape
        the_key = ENV["LOTR_KEY"]
        mov_url = "https://the-one-api.herokuapp.com/v1/movie"
        movies = HTTParty.get(mov_url, :headers => {"Authorization" => "Bearer #{the_key}"}) #movies
        skip_to_movies = 5

        movies["docs"].each do |tester|
        if skip_to_movies > 0
            skip_to_movies -= 1
        else
            # Create movie objects
            newmovie = LOTR::Movies.new
            newmovie.name = 
            newmovie.id_number = 
            newmovie.budget = 
            newmovie.box_rev = 
            newmovie.award_nom = 
            newmovie.award_win = 
        end

    end
end