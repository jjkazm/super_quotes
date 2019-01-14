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

  it 'introduction with both author and source' do
    quote = build(:quote, author: "Maximus", source: "Gladiator" )
    expect(quote.introduction).to eq("Maximus in Gladiator")
  end

  it 'introduction without source' do
    quote = build(:quote, author: "Maximus", source: "" )
    expect(quote.introduction).to eq("Maximus")
  end

  it 'introduction without author' do
    quote = build(:quote, author: "", source: "Gladiator" )
    expect(quote.introduction).to eq("Someone in Gladiator")
  end

  it 'introduction without author and source' do
    quote = build(:quote, author: "", source: "" )
    expect(quote.introduction).to eq("Anonymous")
  end
end
