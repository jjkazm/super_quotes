require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do
    @quote = create(:quote)
  end

    it 'is valid with valid attributes' do
      comment = build(:comment, quote_id: @quote.id)
      expect(comment).to be_valid
    end

    it 'is invalid with short body of quote' do
      comment = build(:comment, quote_id: @quote.id, body: "a" * 4)
      expect(comment).to_not be_valid
    end

    it 'is invalid with empty body' do
      comment = build(:comment, quote_id: @quote.id, body: "")
      expect(comment).to_not be_valid
    end

end
