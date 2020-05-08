class LOTR::Scraper
# This class is responsible for scraping my LOTR API, using my personal key
    def scrape
        the_key = ENV["LOTR_KEY"]
        mov_url = "https://the-one-api.herokuapp.com/v1/movie"
        movies = HTTParty.get(mov_url, :headers => {"Authorization" => "Bearer #{the_key}"}) #movies
        skip_to_movies = 5

        movies["docs"].each do |mov|
        if skip_to_movies > 0
            skip_to_movies -= 1
        else
            newmovie = LOTR::Movies.new
            newmovie.name = mov["name"].strip
            newmovie.id_number = mov["_id"]
            newmovie.budget = mov["budgetInMillions"]
            newmovie.box_rev = mov["boxOfficeRevenueInMillions"]
            newmovie.award_nom = mov["academyAwardNominations"]
            newmovie.award_win = mov["academyAwardWins"]
        end
        end

    end
end