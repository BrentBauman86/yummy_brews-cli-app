class YummyBrews::Brews













  def brew_scraper
    doc = Nokogiri::HTML(open(https://untappd.com/search?q=all&type=beer&sort=all))
    binding.pry
  end

end
