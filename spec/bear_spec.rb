require('minitest/autorun')
require_relative('../bear')


class TestBear < MiniTest::Test

  # def setup
  #   bear1 = Bear.new("Big Foot", "mystery", ["cheese"], "ROAR!!")
  #   bear2 = Bear.new("That bear from revenant", "big ass bear", ["ham"], "MEOW!")
  #   bear3 = Bear.new("Coca cola", "polar", ["coke"], "WOOF!")
  #   @bears = [bear1, bear2, bear3]
  # end

  def test_shout
    bear1 = Bear.new("Big Foot", "mystery", ["cheese"], "ROAR!!")
    bear2 = Bear.new("That bear from revenant", "big ass bear", ["ham"], "MEOW!")
    bear3 = Bear.new("Coca cola", "polar", ["coke"], "WOOF!")
    assert_equal("ROAR!!", bear1.shout(bear1))
    assert_equal("MEOW!", bear2.shout(bear2))
    assert_equal("WOOF!", bear3.shout(bear3))
  end



end
