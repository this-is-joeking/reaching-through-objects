require 'rspec'
require '../lib/room'
require '../lib/apartment'
require '../lib/building'
require '../lib/street'

describe Street do
  it 'exists' do
    street = Street.new("Bell Rd")

    expect(street).to be_a Street
  end

  it 'can have buildings added' do
    bell = Street.new("Bell Rd")
    saratoga = Building.new("1440", "Saratoga Ridge")

    expect(bell.buildings_array).to eq([])
    bell.add_building(saratoga)

    expect(bell.buildings_array).to eq([saratoga])
  end

  it 'can sort the buildings on the street alphabetically' do
    bell = Street.new("Bell Rd")
    saratoga = Building.new("1440", "Saratoga Ridge")
    lazul = Building.new("1350", "Lazul Apartments")
    bell.add_building(saratoga)
    bell.add_building(lazul)

    expect(bell.buildings).to eq(["Lazul Apartments", "Saratoga Ridge"])
  end

  it 'can provide the number of apartments available for rent' do
    bell = Street.new("Bell Rd")
    saratoga = Building.new("1440", "Saratoga Ridge")
    lazul = Building.new("1350", "Lazul Apartments")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    bell.add_building(saratoga)
    bell.add_building(lazul)
    saratoga.add_apartment(apt_1)
    saratoga.add_apartment(apt_2)
    lazul.add_apartment(apt_3)

    expect(bell.number_of_available_apartments).to eq(3)
    lazul.add_apartment(apt_4)

    expect(bell.number_of_available_apartments).to eq(4)
    apt_1.rent
    expect(bell.number_of_available_apartments).to eq(3)
  end

  it 'can list the buildings, apts, and rooms avail on the street' do
    bell = Street.new("Bell Rd")
    saratoga = Building.new("1440", "Saratoga Ridge")
    lazul = Building.new("1350", "Lazul Apartments")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new('kitchen')
    bedroom = Room.new('bedroom')
    apt_1.add_room(bedroom)
    apt_1.add_room(laundry)

    apt_2.add_room(bedroom)
    apt_2.add_room(bathroom)
    apt_2.add_room(kitchen)
    apt_2.add_room(laundry)

    apt_3.add_room(bedroom)
    apt_3.add_room(bathroom)
    apt_3.add_room(laundry)

    bell.add_building(saratoga)
    bell.add_building(lazul)
    saratoga.add_apartment(apt_1)
    saratoga.add_apartment(apt_2)
    lazul.add_apartment(apt_3)

    expect(bell.list_available_apartments).to eq({
      "Saratoga Ridge" => ["bedroom", "laundry"],
      "Saratoga Ridge" => ["bathroom", "bedroom", "kitchen", "laundry"],
      "Lazul Apartments" => ["bathroom", "bedroom", "laundry"]
      })
  end
end
