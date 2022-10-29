require 'rspec'
require '../lib/card'

describe Card do
  it 'exists' do
    card = Card.new

    expect(card).to be_a Card
  end
end
