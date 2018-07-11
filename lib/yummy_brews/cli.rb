class YummyBrews::CLI

  def call
    YummyBrews::BrewScraper.initiate_scraper
    # binding.pry
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
    start
  end

  def list_brews
    YummyBrews::Brew.all.each.with_index(1) do |brew, index|
      puts "#{index}. #{brew.name}"
    end
  end

  def display_brew(integer)
    user_selection = YummyBrews::Brew.all[integer - 1]
    # binding.pry
    puts ""
    puts user_selection.name
    puts user_selection.brewery
    puts user_selection.brew_type
    puts user_selection.abv
    puts "Rating: #{user_selection.rating}/5"
    puts "\n\t#{user_selection.description}"
    puts ""
    puts user_selection.brew_url
  end

  def start
    # binding.pry
    input = nil
    puts ""
    puts "Enter the brew number which fits your fancy, if nothing appeals to you please type exit."
    input = gets.strip

    if input.to_i > 0 && input.to_i <= YummyBrews::Brew.all.length
      # binding.pry
      display_brew(input.to_i)
      start

    elsif input == "exit"
      puts ""
      puts "Goodbye, hope that made you thirsty!"

    else
      start
    end
  end
end
