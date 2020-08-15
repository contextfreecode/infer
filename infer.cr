class Palette

  def initialize(@colors)
  end

  @colors : Array(String)
  getter colors

end

def main
  colors = ["red", "yellow", "blue"]
  # colors2 = [] of String
  # colors2.concat(colors)
  # puts typeof(colors)
  # puts typeof(colors2)
  # palette = Palette.new(colors)
  colors.each_with_index do |color, index|
    puts "Color #{index}: #{color}"
  end
end

def upcase(string)
  string.upcase()
end

main
