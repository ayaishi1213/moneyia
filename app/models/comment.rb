class Comment < ApplicationRecord
  validates :text, presence: true
  belong_to: post
  belong_to: user
end
