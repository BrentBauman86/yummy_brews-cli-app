class Brew

  attr_accessor :name, :brewery, :abv

  def initialize(brew_hash)
    @name = brew_hash[:name]
    @brewery = brew_hash[:brewery]
    @abv = brew_hash[:abv]
  end

end
