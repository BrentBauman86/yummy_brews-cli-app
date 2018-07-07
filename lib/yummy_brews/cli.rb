class YummyBrews::CLI

  def call
    BrewScraper.initiate_scraper
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
    start
  end

  def list_brews
    Brew.all.each.with_index(1) do |brews, index|
      puts "#{index}". "#{brews}"
  end

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
