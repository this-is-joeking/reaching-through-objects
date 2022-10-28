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
end
