require 'rails_helper'

RSpec.describe Quote, type: :model do

  it 'is valid with valid attributes' do
    quote = build(:quote)
    expect(quote).to be_valid
  end

  it 'is invalid with short body of quote' do
    quote = build(:quote, body: "a" * 4)
    expect(quote).to_not be_valid
  end

  it 'is invalid with empty body' do
    quote = build(:quote, body: "")
    expect(quote).to_not be_valid
  end
end
