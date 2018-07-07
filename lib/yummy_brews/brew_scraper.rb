class BrewScraper

  def self.initiate_scraper
    Brew.create_from_array(brew_scraper)
    Brew.all.each do |brew|
      brew.brew_details(brew_scraper_details(brew.brew_url))
    end 
  end

  def self.brew_scraper
    doc = Nokogiri::HTML(open("https://untappd.com/search?q=beers", :allow_redirection => :all))
    base_url = "https://www.untappd.com"
    brews = []
    doc.css("div.result-list.beer-list").each do |list|
      list.css("div.beer-item").each do |content|
      name = content.css("p.name").text
      url = content.css("p.name a").attributes("href").text
      abv = content.css("p.abv").text
      abv = abv.strip
      brew_type = content.css("p.style").text
      brewery = content.css("p.brewery").text
      rating = content.css("p.rating span.num").text
      rating = rating[1..5]
      brews << {:name => name, :brewery => brewery, :abv => abv, :url => base_url, :brew_type => brew_type, :rating => rating}
        end
      end
    brews
  end

  def self.brew_scraper_details(brew_url)

    doc = Nokogiri::HTML(open(base_url, :allow_redirection => :all)

    content = doc.css("div.content")
    description = content.css("div.bottom div.desc div.beer-description-read-less").text
    brew_details = {:description => description}

    brew_details
  end
end
