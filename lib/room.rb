class Room

  attr_accessor :category, 
                :length, 
                :width

  def initialize(category, length, width )
        @category = category
        @length = length
        @width = width
        @painted = false
  end

  def is_painted? 
    @painted
  end

  def paint
    @painted = true
  end

  def area
    @length * @width.to_i
  end
end
