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

    expect(building.number).to eq("623")

  end
end
