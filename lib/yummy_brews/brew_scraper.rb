class BrewScraper

  def self.brew_scraper
    doc = Nokogiri::HTML(open("https://untappd.com/search?q=beer"))
    brews = []
    doc.css("div.result-list.beer-list").each do |list|
      list.css("div.beer-item").each do |content|
      name = content.css("p.name").text
      abv = content.css("p.abv").text
      brewery = content.css("p.brewery").text
      brews << {:name => name, :brewery => brewery, :abv => abv}
        end
      end
    brews
  end

  def self.brew_scraper_details
    doc = Nokogiri::HTML(open("https://untappd.com"))

    details = doc.css("div.beer-description-read-less")

  end
end
