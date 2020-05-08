class LOTR::Scraper
# This class is responsible for scraping my LOTR API, using my personal key
    def scrape
        the_key = ENV["LOTR_API_KEY"]
        char_url = "https://the-one-api.herokuapp.com/v1/character"
        test = HTTParty.get(char_url, :headers => {"Authorization" => "Bearer #{ENV["LOTR_API_KEY"]}"})
        
        byebug
    end
end