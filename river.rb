class River



  def initialize(fish)
    @f = fish
  end

  def eat_fish_from_river(bear)
    if @f.size < 1
      return bear.roar
    else
      bear.tummy << @f.pop.fish_name
      return bear.tummy
    end
  end

  # def no_fish()
  #
  # end
end
