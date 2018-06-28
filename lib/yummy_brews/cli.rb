class YummyBrews::CLI

  def call
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
# binding.pry
    start
    fairwell
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
  end

  def brew_scraper
    # doc = Nokogiri::HTML(open(https://untappd.com/search?q=all&type=beer&sort=all))
    # binding.pry
  end

  def start
    input = nil
    puts "Enter the brew number which fits your fancy:"
    input = gets.strip

    if input.to_i > 0
      puts @brews[input.to_i-1]
    elsif input == "list_brews"
      list_brews
    elsif input == "2"
      puts "Displays info and picture of selected brew"
    else
      puts "Come back now ya hear!"
    end
end

  def fairwell
    puts "Hope that made you thirsty!"
  end
end
