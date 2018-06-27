class YummyBrews::CLI

  def call
    puts "Hello fellow brew lover, what kind of brew would you like to check out?  Here are your options:"
    list_brews
  end

  def list_brews
puts "1. Wheat
      2. IPA
      3. Stout
      4. Hefeweizen
      5. Pilsner
      6. Ale"
  end
end
