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
end
