class Comment < ApplicationRecord
  belongs_to :quote
  validates :body, presence: true, length: {minimum: 5, maximum: 500}
end
