require './lib/room'
require './lib/house'

RSpec.describe House do
  describe "Iteration 2" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")

      expect(house).to be_a House
    end

    it 'has a price' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.price).to eq 400000
    end

    it 'has a address' do
      house = House.new("$400000", "123 sugar lane")

      expect(house.address).to eq "123 sugar lane"
    end

    # it 'rooms' do 
    #   house = House.new("$400000", "123 sugar lane")
    #   room_1 = Room.new(:bedroom, 10, '13')
    #   room_2 = Room.new(:bedroom, 11, '15')  

    #   expect(house.rooms).to be_a Array
    # end

    it 'adds rooms' do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15') 
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq [room_1, room_2]
    end

    it 'checks market average' do 
      house = House.new("$400000", "123 sugar lane")

      expect(house.market_average?).to eq false
    end

    it 'adds more rooms' do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms).to eq [room_1, room_2, room_3, room_4]
    end

    it 'checks room based off category' do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_from_category(:bedroom)).to eq [room_1, room_2]
      expect(house.rooms_from_category(:basement)).to eq [room_4]
    end

    it 'can calculate the house area' do
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.area).to eq 1900
    end
  end
end