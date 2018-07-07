class YummyBrews::CLI

  def call
    BrewScraper.initiate_scraper
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
    start
  end

  def list_brews
    Brew.all.each.with_index(1) do |brew, index|
      puts "#{index}". "#{brew.name}"
    end
  end

  def display_brew(integer)

  end

  def start
    input = nil
    puts ""
    puts "Enter the brew number which fits your fancy, if nothing appeals to you please type exit."
    input = gets.strip

    if input.to_i > 0 && input.to_i < Brew.all.length


    elsif input == "exit"
      puts "Goodbye, hope that made you thirsty!"
    end
end

end
