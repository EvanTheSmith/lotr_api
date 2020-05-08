class LOTR::Scraper
# This class is responsible for scraping my LOTR API, using my personal key
    def scrape
        the_key = ENV["LOTR_KEY"]
        # char_url = "https://the-one-api.herokuapp.com/v1/character"
        mov_url = "https://the-one-api.herokuapp.com/v1/movie"
        # test = HTTParty.get(char_url, :headers => {"Authorization" => "Bearer #{the_key}"})
        movies = HTTParty.get(mov_url, :headers => {"Authorization" => "Bearer #{the_key}"})

        movies["docs"].each do |thing|
            byebug
        end

    end
end