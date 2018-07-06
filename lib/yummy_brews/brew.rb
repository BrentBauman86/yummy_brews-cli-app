class Brew

  attr_accessor :name, :brewery, :abv

  @@all = []

  def initialize(brew_hash)
    @name = brew_hash[:name]
    @brewery = brew_hash[:brewery]
    @abv = brew_hash[:abv]
  end

def brew_details(details_hash)
  @details = details_hash[:details]
end

end
