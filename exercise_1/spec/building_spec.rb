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

    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)

    expect(building.list_apartments).to eq([apt_1, apt_2, apt_5])
  end
end
