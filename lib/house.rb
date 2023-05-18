class House
    attr_accessor :price, :address, :rooms 

  def initialize(price, address)
      @price = price
      @address = address
      @rooms = []
  end

  def price
    @price.delete!('$')
      @price.to_i
  end

  def rooms 
    @rooms
  end

  def add_room(room)
    @rooms.push(room)
  end
end