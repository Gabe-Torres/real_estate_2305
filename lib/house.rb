class House
    attr_accessor :address, 
                  :rooms 

  def initialize(price, address)
      @price = price
      @address = address
      @rooms = []
  end

  def price
    @price.delete('$').to_i
      # @price.to_i
  end

  # def rooms 
  #   @rooms
  # end

  def add_room(room)
    @rooms.push(room)
  end

  def market_average?
    if @price > ("$500,000") then true else false end
  end
  
  def rooms_from_category(category)
    @rooms.select do |room|
        room.category == category
    end
  end

  def area 
    @rooms.sum do |room|
      room.area
    end
  end

  def details
    {"price" => price, "address" => @address}
  end
end