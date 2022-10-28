require 'rspec'
require '../lib/room'
require '../lib/apartment'

describe Apartment do
  it 'exists' do
    apt = Apartment.new

    expect(apt).to be_a(Apartment)
  end

  it 'confirms if it is rented' do
    apt = Apartment.new

    expect(apt.is_rented?).to eq false
  end

  it 'can be rented out' do
    apt = Apartment.new

    expect(apt.is_rented?).to eq false
    apt.rent

    expect(apt.is_rented?).to eq true
  end

  it 'can have rooms added' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new('kitchen')
    bedroom = Room.new('bedroom')

    expect(apartment.rooms).to eq([])
    apartment.add_room(laundry)
    apartment.add_room(bathroom)
    apartment.add_room(bedroom)
    apartment.add_room(kitchen)

    expect(apartment.rooms).to eq([laundry, bathroom, bedroom, kitchen])
  end
end
