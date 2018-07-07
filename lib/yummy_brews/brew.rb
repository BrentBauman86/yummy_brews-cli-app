class Brew

  attr_accessor :name, :brewery, :abv, :brew_type, :rating, :brew_url

  @@all = []

  def initialize(brew_hash)
    @name = brew_hash[:name]
    @brewery = brew_hash[:brewery]
    @abv = brew_hash[:abv]
    @brew_type = brew_hash[:brew_type]
    @rating = brew_hash[:rating]
    @brew_url = brew_hash[:brew_url]
    @@all << self
  end

def brew_details(details_hash)
  @details = details_hash[:details]
end

end
