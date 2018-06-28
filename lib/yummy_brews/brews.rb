class YummyBrews::Brews

  attr_accessor :name, :brewery, :abv

  def self.brews
    wheat_beers = self.new
    wheat_beers.name = "Blue Moon"
    wheat_beers.brewery = "Blue Moon Brewing Company"
    wheat_beers.abv = "5.4%"

    ipa_beers = self.new
    ipa_beers.name = "Blue Moon"
    ipa_beers.brewery = "Blue Moon Brewing Company"
    ipa_beers.abv = "5.4%"

    stout_beers = self.new
    stout_beers.name = "Blue Moon"
    stout_beers.brewery = "Blue Moon Brewing Company"
    stout_beers.abv = "5.4%"

    hefeweizen_beers = self.new
    hefeweizen_beers.name = "Blue Moon"
    hefeweizen_beers.brewery = "Blue Moon Brewing Company"
    hefeweizen_beers.abv = "5.4%"

    pilsner_beers = self.new
    pilsner_beers.name = "Blue Moon"
    pilsner_beers.brewery = "Blue Moon Brewing Company"
    pilsner_beers.abv = "5.4%"

    ale_beers = self.new
    ale_beers.name = "Blue Moon"
    ale_beers.brewery = "Blue Moon Brewing Company"
    ale_beers.abv = "5.4%"

    [wheat_beers, ipa_beers, stout_beers, hefeweizen_beers, pilsner_beers, ale_beers]
  end

  def brew_scraper
    # brews = []
    doc = Nokogiri::HTML(open(https://untappd.com))
    binding.pry
    # this needs to return our array of brews!!
  end

end
