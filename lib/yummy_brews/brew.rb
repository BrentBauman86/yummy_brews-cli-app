class Brew

  attr_accessor :name, :brewery, :abv, :brew_type, :rating, :brew_url, :description

  @@all = []

  def initialize(brew_hash)
    @name = brew_hash[:name]
    @brewery = brew_hash[:brewery]
    @abv = brew_hash[:abv]
    @brew_type = brew_hash[:brew_type]
    @rating = brew_hash[:rating]
    @brew_url = brew_hash[:url]
    @@all << self
  end

  def self.create_from_array(array)
    array.each {|brew_hash| Brew.new(brew_hash)}
  end

  def brew_details(details_hash)
    @description = details_hash[:description]
  end

  def self.all
    @@all
  end
end
