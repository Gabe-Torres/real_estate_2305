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
  
  def rooms_from_category
    
  end
end