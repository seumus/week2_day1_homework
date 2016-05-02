require('minitest/autorun')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')


class TestRiver < MiniTest::Test

def setup
  fish1 = Fish.new('Flounder')
  fish2 = Fish.new('Bubbles')
  fish3 = Fish.new('Sinky')
  fish = [fish1, fish2, fish3]
  @river = River.new(fish)

  @bear1 = Bear.new("Big Foot", "mystery", ["cheese"], "ROAR!!")
  @bear2 = Bear.new("That bear from revenant", "big ass bear", ["ham"], "MEOW!")
  @bear3 = Bear.new("Coca cola", "polar", ["coke"], "WOOF!")
end

def test_eat_fish_from_river
  assert_equal(["cheese", "Sinky"], @river.eat_fish_from_river(@bear1))
  assert_equal(["ham", "Bubbles"], @river.eat_fish_from_river(@bear2))
  assert_equal(["coke", "Flounder"], @river.eat_fish_from_river(@bear3))
  assert_equal("ROAR!!", @river.eat_fish_from_river(@bear1))
  assert_equal("MEOW!", @river.eat_fish_from_river(@bear2))
end

# def test_no_fish
#   assert_equal("WOOF!", @)
# end

end
