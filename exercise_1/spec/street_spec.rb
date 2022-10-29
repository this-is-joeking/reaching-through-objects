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
    bell.add_building(saratoga)
    bell.add_building(lazul)
    saratoga.add_apartment(apt_1)
    saratoga.add_apartment(apt_2)
    lazul.add_apartment(apt_3)


    expect(bell.number_of_available_apartments).to eq(3)
  end
end
