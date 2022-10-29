require 'rspec'
require '../lib/room'
require '../lib/apartment'
require '../lib/building'

describe Building do
  it 'exists' do
    building = Building.new("623", "Lazul")

    expect(building).to be_a Building
  end

  it 'has a number' do
    building = Building.new("623", "Lazul")

    expect(building.building_number).to eq("623")
  end

  it 'has a name' do
    building = Building.new("623", "Lazul")

    expect(building.building_name).to eq("Lazul")
  end

  it 'can have apartments added and list them' do
    building = Building.new("623", "Lazul")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new

    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_5)

    expect(building.list_apartments).to eq([apt_1, apt_2, apt_5])
  end

  it 'can return available apartments' do
    building = Building.new("623", "Lazul")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new

    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_5)

    expect(building.avail_apts).to eq([apt_1, apt_2, apt_5])
  end

  it 'can return number of available apartments' do
    building = Building.new("623", "Lazul")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new

    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    building.add_apartment(apt_5)

    expect(building.num_avail_apts).to eq(3)
  end

  it 'can provide list of the apts available including the rooms' do
    building = Building.new("623", "Lazul")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new('kitchen')
    bedroom = Room.new('bedroom')
    building.add_apartment(apt_1)
    building.add_apartment(apt_2)
    apt_1.add_room(bedroom)
    apt_1.add_room(laundry)
    apt_2.add_room(bedroom)
    apt_2.add_room(bathroom)
    apt_2.add_room(kitchen)
    apt_2.add_room(laundry)

    expect(building.rooms_in_apts).to eq([["bedroom", "laundry"], ["bathroom", "bedroom", "kitchen", "laundry"]])
  end
end
