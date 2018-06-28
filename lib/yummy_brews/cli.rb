class YummyBrews::CLI

  def call
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
# binding.pry
    start
    # fairwell
    # brew_scraper
  end

  def list_brews
    puts "
          1. Wheat
          2. IPA
          3. Stout
          4. Hefeweizen
          5. Pilsner
          6. Ale"
    @brews = YummyBrews::Brews
    # @brews.each.with_index(1) do |brews, i|
      # puts "#{i}". "#{brews.name}"
    # end
  end

  def brew_scraper
    # doc = Nokogiri::HTML(open(https://untappd.com/search?q=all&type=beer&sort=all))
    # binding.pry
  end

  def start
    input = nil
    puts "Enter the brew number which fits your fancy:"
    input = gets.strip

    if input == "1"
      puts "Yummy Wheat beers here"
    elsif input == "2"
      puts "ipas"
    elsif input == "3"
      puts "stout"
    elsif input == "4"
      puts "hefe"
    elsif input == "5"
      puts "pilsner"
    elsif input == "6"
      puts "ale"
    else
      puts "Goodbye!"
    end
end

  def fairwell
    puts "Hope that made you thirsty!"
  end
end
