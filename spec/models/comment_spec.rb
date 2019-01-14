require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do
    @quote = create(:quote)
  end

  let(:create_comment) {create(:comment, quote_id: @quote.id)}

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

    it 'adding increases comments count' do
      expect{create_comment}.to change{@quote.comments.count}.by(1)
    end

end
