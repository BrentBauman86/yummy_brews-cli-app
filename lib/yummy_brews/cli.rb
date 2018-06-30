class YummyBrews::CLI

  def call
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
    start
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

  # def brew_scraper
  #   # doc = Nokogiri::HTML(open(https://untappd.com/search?q=all&type=beer&sort=all))
  #   # binding.pry
  # end

  def start
    input = nil
    puts ""
    puts "Enter the brew number which fits your fancy, if nothing appeals to you please type exit."
    input = gets.strip

    if input == "1"
      puts "Yummy Wheat beers here"
      start
    elsif input == "2"
      puts "ipas"
      start
    elsif input == "3"
      puts "stout"
      start
    elsif input == "4"
      puts "hefe"
      start
    elsif input == "5"
      puts "pilsner"
      start
    elsif input == "6"
      puts "ale"
      start
    elsif input == "exit"
      puts "Goodbye, hope that made you thirsty!"
    end
end

end
