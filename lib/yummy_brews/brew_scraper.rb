class YummyBrews::BrewScraper

  def self.initiate_scraper
    YummyBrews::Brew.create_from_array(brew_scraper)
    YummyBrews::Brew.all.each do |brew|
      brew.brew_details(brew_scraper_details(brew.brew_url))
    end
  end

  def self.brew_scraper
    doc = Nokogiri::HTML(open("https://untappd.com/search?q=beers", :allow_redirections => :all))
    base_url = "https://www.untappd.com"
    brew_hashes = []
    doc.css("div.result-list.beer-list").each do |list_item|
      list_item.css("div.beer-item").each do |content|
      name = content.css("p.name").text
      brew_url = content.css("p.name a").attribute("href").text
      abv = content.css("p.abv").text
      abv = abv.strip
      brew_type = content.css("p.style").text
      brewery = content.css("p.brewery").text
      rating = content.css("p.rating span.num").text
      rating = rating[1..5]
      brew_hashes << {:name => name, :brewery => brewery, :abv => abv, :url => base_url + brew_url, :brew_type => brew_type, :rating => rating}
        end
      end
    brew_hashes
  end

  def self.brew_scraper_details(brew_url)
    doc = Nokogiri::HTML(open(brew_url, :allow_redirections => :all))

    content = doc.css("div.content")
    description = content.css("div.bottom div.desc div.beer-descrption-read-less").text
    description = description.gsub("Show Less", "").strip

    brew_details = {:description => description}

    brew_details
  end
end
