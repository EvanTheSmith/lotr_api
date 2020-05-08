class LOTR::Scraper
# This class is responsible for scraping my LOTR API, using my personal key
    def scrape
        the_key = ENV["LOTR_KEY"]
        mov_url = "https://the-one-api.herokuapp.com/v1/movie"
        HTTParty.get(mov_url, :headers => {"Authorization" => "Bearer #{the_key}"}) #movies
    end
end