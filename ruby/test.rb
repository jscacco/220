def getNum (*elements)
  def test
    puts "WOW!"
  end
  
  elements.each do |x|
    if x > 20
      return x
    end
    return "None!"
  end
end

puts getNum test 20
